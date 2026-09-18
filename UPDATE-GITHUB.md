# SerenaMind V16 Clean Login publiceren

1. Pak deze ZIP uit.
2. Open RodysBuilds/serenamind-app op GitHub.
3. Kies Code > Add file > Upload files.
4. Upload ALLE losse bestanden naar de hoofdmap.
5. Vervang bestaande bestanden.
6. Controleer dat `local-auth.js` aanwezig is.
7. Commit met: `SerenaMind V16 clean login fix`.
8. Wacht bij Actions tot de nieuwste Pages-run groen is.
9. Open `https://rodysbuilds.github.io/serenamind-app/?v=16`.
10. Controleer bovenaan `v16-clean`.
11. Maak een nieuw account met een nieuwe gebruikersnaam.

V16 verwijdert de conflicterende oude registratiecode uit app.js. Er is maar een lokale loginmethode actief. Geen e-mail, Supabase, cloudcontrole of herstelcode.
