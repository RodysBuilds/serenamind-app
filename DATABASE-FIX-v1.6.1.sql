-- SerenaMind v1.6.1 registratie-fix
alter table public.profiles add column if not exists recovery_hash text;

create or replace function public.handle_new_serenamind_user()
returns trigger
language plpgsql
security definer set search_path=public
as $$
begin
  insert into public.profiles(id,username,display_name,avatar_url,recovery_hash)
  values(
    new.id,
    lower(coalesce(nullif(new.raw_user_meta_data->>'username',''),'user_'||substr(new.id::text,1,8))),
    coalesce(nullif(new.raw_user_meta_data->>'display_name',''),'SerenaMind gebruiker'),
    nullif(new.raw_user_meta_data->>'avatar_url',''),
    nullif(new.raw_user_meta_data->>'recovery_hash','')
  )
  on conflict(id) do update set
    username=excluded.username,
    display_name=excluded.display_name,
    recovery_hash=coalesce(excluded.recovery_hash,profiles.recovery_hash);
  return new;
end;$$;

drop trigger if exists on_auth_user_created_serenamind on auth.users;
create trigger on_auth_user_created_serenamind
after insert or update of raw_user_meta_data on auth.users
for each row execute procedure public.handle_new_serenamind_user();
