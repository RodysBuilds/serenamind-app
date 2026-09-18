-- SerenaMind v1.6 gebruikersnaam en herstelcode
alter table public.profiles add column if not exists recovery_hash text;
create table if not exists public.recovery_requests (id uuid primary key default gen_random_uuid(), username text not null, recovery_hash text not null, note text, status text not null default 'open', created_at timestamptz default now());
alter table public.recovery_requests enable row level security;
-- Geen directe select/update policy voor clients. Alleen security-definer functie maakt een verzoek na verificatie.
create or replace function public.create_recovery_request(p_username text,p_recovery_hash text,p_note text default null) returns text language plpgsql security definer set search_path=public as $$ declare p profiles; rid uuid; begin select * into p from profiles where username=lower(p_username);if p.id is null or p.recovery_hash is null or p.recovery_hash<>p_recovery_hash then raise exception 'Gebruikersnaam of herstelcode is onjuist';end if;insert into recovery_requests(username,recovery_hash,note) values(lower(p_username),p_recovery_hash,left(p_note,300)) returning id into rid;return substr(rid::text,1,8);end $$;
grant execute on function public.create_recovery_request(text,text,text) to anon,authenticated;
