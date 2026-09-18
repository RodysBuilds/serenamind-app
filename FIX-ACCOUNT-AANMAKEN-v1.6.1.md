# Fix account aanmaken v1.6.1

## Oorzaak
Versie 1.6.0 gebruikte intern het gereserveerde domein `.invalid`. Supabase kon deze interne identiteit weigeren als ongeldig e-mailadres. Versie 1.6.1 gebruikt het eigen Supabase-projectdomein als technische identiteit. De gebruiker ziet nog steeds alleen een gebruikersnaam.

## Verplicht in Supabase
1. Authentication > Sign In / Providers > Email.
2. Email provider AAN.
3. Confirm email UIT.
4. Secure email change mag aan blijven.
5. Voer `DATABASE-FIX-v1.6.1.sql` uit in SQL Editor.

## Test
Gebruik een nieuwe gebruikersnaam die nog niet eerder is geprobeerd. Verwijder eventueel mislukte testgebruikers via Authentication > Users.
