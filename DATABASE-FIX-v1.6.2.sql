-- SerenaMind v1.6.2 volledige accountfix
alter table public.profiles add column if not exists avatar_url text;
alter table public.profiles add column if not exists recovery_hash text;
create unique index if not exists profiles_username_lower_unique on public.profiles(lower(username));

create or replace function public.handle_new_serenamind_user() returns trigger language plpgsql security definer set search_path=public as $$
begin
 insert into public.profiles(id,username,display_name,avatar_url,recovery_hash) values(new.id,lower(coalesce(nullif(new.raw_user_meta_data->>'username',''),'user_'||substr(new.id::text,1,8))),coalesce(nullif(new.raw_user_meta_data->>'display_name',''),'SerenaMind gebruiker'),nullif(new.raw_user_meta_data->>'avatar_url',''),nullif(new.raw_user_meta_data->>'recovery_hash',''))
 on conflict(id) do update set username=excluded.username,display_name=excluded.display_name,recovery_hash=coalesce(excluded.recovery_hash,profiles.recovery_hash);return new;
end;$$;
drop trigger if exists on_auth_user_created_serenamind on auth.users;
create trigger on_auth_user_created_serenamind after insert or update of raw_user_meta_data on auth.users for each row execute procedure public.handle_new_serenamind_user();

create table if not exists public.recovery_requests(id uuid primary key default gen_random_uuid(),username text not null,recovery_hash text not null,note text,status text not null default 'open',created_at timestamptz default now());
alter table public.recovery_requests enable row level security;
create or replace function public.create_recovery_request(p_username text,p_recovery_hash text,p_note text default null) returns text language plpgsql security definer set search_path=public as $$declare p profiles;rid uuid;begin select * into p from profiles where lower(username)=lower(p_username);if p.id is null or p.recovery_hash is null or p.recovery_hash<>p_recovery_hash then raise exception 'Gebruikersnaam of herstelcode is onjuist';end if;insert into recovery_requests(username,recovery_hash,note) values(lower(p_username),p_recovery_hash,left(p_note,300)) returning id into rid;return substr(rid::text,1,8);end$$;
grant execute on function public.create_recovery_request(text,text,text) to anon,authenticated;
