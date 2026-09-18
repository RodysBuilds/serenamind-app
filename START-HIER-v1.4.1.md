# SerenaMind v1.4.1 starten

1. Upload de inhoud van `serenamind_pro` naar de hoofdmap van GitHub.
2. Behoud `config.js` uit dit pakket: de opgegeven Supabase Project URL en publishable key staan al ingevuld.
3. Open Supabase SQL Editor en voer eerst `supabase-schema.sql` uit als de tabellen nog niet bestaan.
4. Voer daarna altijd `DATABASE-UPGRADE-v1.4.1.sql` uit. Dit maakt automatisch een profiel bij een Auth-account en repareert ontbrekende profielen.
5. Controleer Authentication > URL Configuration en Email provider.
6. Wacht op de GitHub Pages deployment, verwijder oude sitecache of open een privévenster.
7. Registreer met e-mailadres, bevestig de mail en log in.

De publishable key mag in de client staan. Plaats nooit een secret/service_role key in GitHub.
