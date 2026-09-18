# SerenaMind v1.6 gebruikersnaamaccounts

1. Supabase > Authentication > Sign In / Providers > Email: laat Email aan, maar zet Confirm email UIT. De app gebruikt intern een niet-zichtbare technische identiteit; er worden geen e-mails verstuurd.
2. Voer `DATABASE-UPGRADE-v1.6.sql` uit in SQL Editor.
3. Upload alle bestanden naar GitHub-hoofdmap.
4. Registreer met gebruikersnaam en wachtwoord.
5. Bewaar de eenmalig getoonde herstelcode buiten SerenaMind.

## Beheerder-reset
Een gebruiker maakt met gebruikersnaam + herstelcode een herstelverzoek. Een beheerder controleert in Supabase Table Editor `recovery_requests`. Een beheerder mag nooit om het bestaande wachtwoord vragen. Het daadwerkelijke wijzigen van een Auth-wachtwoord vereist een vertrouwde server/Edge Function met extra beheerdersauthenticatie; doe dit niet vanuit GitHub Pages en plaats nooit de service_role key in de app.

Zonder geldige herstelcode is accountteruggave niet gegarandeerd. Een beheerder moet aanvullende identiteitssignalen controleren en kan een verzoek afwijzen.
