# Database en echte accounts activeren

1. Maak een project op Supabase.
2. Open SQL Editor, plak heel `supabase-schema.sql` en voer het uit.
3. Open Project Settings > API. Kopieer Project URL en de publieke anon key.
4. Open `config.js` en vervang beide `VUL_HIER...` waarden. Gebruik nooit de service_role key.
5. Open Authentication > URL Configuration. Stel Site URL in op jouw GitHub Pages-adres en voeg hetzelfde adres toe bij Redirect URLs.
6. Open Authentication > Providers > Email. Laat e-mailbevestiging aan voor productie.
7. Commit alle bestanden opnieuw naar GitHub.
8. Registreer met e-mailadres, bevestig de mail en log daarna in.

## Waarom het oude account niet bestaat
De vorige versie gebruikte browseropslag. Een ander apparaat, domein of gewiste browserdata kon dat account niet zien. Deze versie gebruikt na configuratie Supabase Auth en database-opslag.

## Steunmaatje
Een gebruiker maakt een 8-cijferige/lettercode die 24 uur geldig is. Een bekende contactpersoon voert die code in. Alleen gekoppelde accounts kunnen de berichten lezen via Row Level Security. Dit is realtime delen via de server, niet rechtstreeks apparaat-naar-apparaat. Gebruik dit niet als spoedkanaal.
