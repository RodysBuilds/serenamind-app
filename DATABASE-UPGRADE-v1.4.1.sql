-- SerenaMind v1.4.1 database-upgrade
-- Voer dit eenmaal uit in Supabase SQL Editor.

alter table public.profiles add column if not exists avatar_url text;

create or replace function public.handle_new_serenamind_user()
returns trigger
language plpgsql
security definer set search_path = public
as $$
begin
  insert into public.profiles (id, username, display_name, avatar_url)
  values (
    new.id,
    coalesce(nullif(new.raw_user_meta_data->>'username',''), 'user_' || substr(new.id::text,1,8)),
    coalesce(nullif(new.raw_user_meta_data->>'display_name',''), split_part(new.email,'@',1)),
    nullif(new.raw_user_meta_data->>'avatar_url','')
  )
  on conflict (id) do update set
    username = excluded.username,
    display_name = excluded.display_name;
  return new;
end;
$$;

drop trigger if exists on_auth_user_created_serenamind on auth.users;
create trigger on_auth_user_created_serenamind
  after insert or update of raw_user_meta_data on auth.users
  for each row execute procedure public.handle_new_serenamind_user();

-- Maak ontbrekende profielen voor reeds bestaande Auth-gebruikers.
insert into public.profiles (id, username, display_name, avatar_url)
select u.id,
       coalesce(nullif(u.raw_user_meta_data->>'username',''), 'user_' || substr(u.id::text,1,8)),
       coalesce(nullif(u.raw_user_meta_data->>'display_name',''), split_part(u.email,'@',1)),
       nullif(u.raw_user_meta_data->>'avatar_url','')
from auth.users u
where not exists (select 1 from public.profiles p where p.id=u.id)
on conflict do nothing;
