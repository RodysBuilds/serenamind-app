# SerenaMind

**Rust • Balans • Groei**  
*Jouw veilige plek, altijd dichtbij.*

# SerenaMind

Een uitgebreide, installeerbare PWA voor dagelijkse zelfondersteuning bij stress en overprikkeling.

## Nieuw in Plus
- Communicatiecentrum met berichtenbouwer, voorbeeldzinnen, delen en gesprekspunten
- Uitgebreide takenlijst met datum, tijd, prioriteit, herhaling en telefoonherinneringen
- Sluimeren, filters, afronden en meldingstest
- Lokale registratie en inloggen met gebruikersnaam en wachtwoord
- Profielfoto, naam, uitloggen en lokaal profielbeheer
- Check-ins en lokaal patroonoverzicht
- Adem-, grondings-, prikkelpauze- en ontspanningstools
- Lichtpuntjes, fijne-dingenlijst en zachte activiteiten
- Dagplan, dankbaarheidsnotitie en energiebescherming
- Privédagboek met eigen wachtwoord en AES-GCM-versleuteling
- PBKDF2-sleutelafleiding met 250.000 iteraties
- Donkere, prikkelarme, grote-tekst- en hoog-contrastmodus
- Lokaal steuncontact en crisisopties
- Offline gebruik na eerste websitesessie

## Lokaal testen
Open `index.html` voor een snelle visuele test. Service workers, installatie en Web Crypto werken het betrouwbaarst via `localhost` of HTTPS.

Met Python lokaal starten:
```bash
python3 -m http.server 8000
```
Open daarna `http://localhost:8000`.

## Online zetten met GitHub Pages
1. Maak een repository, bijvoorbeeld `rustpunt-plus`.
2. Upload alle bestanden uit deze map naar de hoofdmap.
3. Ga naar Settings > Pages.
4. Kies Deploy from a branch, `main`, `/root`.
5. Open de HTTPS-link die GitHub toont.

## Installeren
- Android/Chrome: menu > App installeren of Toevoegen aan startscherm.
- iPhone/Safari: Delen > Zet op beginscherm.

## Belangrijk over dagboekbeveiliging
Het dagboek wordt met Web Crypto lokaal versleuteld. Het wachtwoord wordt niet opgeslagen. Zonder wachtwoord kunnen notities niet worden hersteld. Browseropslag kan verdwijnen door het wissen van websitegegevens, een toestelreset of privéstand. Exporteer daarom regelmatig het versleutelde dagboekbestand. De export kan in deze versie nog niet automatisch worden teruggezet.

## Veiligheid
SerenaMind stelt geen diagnose en vervangt geen huisarts, psycholoog of behandeling. Laat inhoud en gebruikerservaring vóór publieke uitgave beoordelen door bevoegde GGZ-professionals, ervaringsdeskundigen, privacy- en toegankelijkheidsspecialisten. Controleer noodnummers per land wanneer je internationaal publiceert.

## Registratie en accounts
Deze versie heeft lokale accounts. Een account bestaat alleen in de browser op het apparaat waarop het is gemaakt. De wachtwoordcontrole wordt lokaal opgeslagen als hash met een unieke salt. De profielgegevens en foto blijven lokaal. Dit is geschikt voor een prototype, maar nog niet voor echte synchronisatie of publiek accountbeheer. Voor productie zijn een beveiligde backend, e-mailverificatie, herstelprocedure, rate limiting, sessiebeheer, privacyverklaring en beveiligingsonderzoek nodig.


Een uitgebreide, installeerbare PWA voor dagelijkse zelfondersteuning bij stress en overprikkeling.

## Nieuw in Plus
- Communicatiecentrum met berichtenbouwer, voorbeeldzinnen, delen en gesprekspunten
- Uitgebreide takenlijst met datum, tijd, prioriteit, herhaling en telefoonherinneringen
- Sluimeren, filters, afronden en meldingstest
- Lokale registratie en inloggen met gebruikersnaam en wachtwoord
- Profielfoto, naam, uitloggen en lokaal profielbeheer
- Check-ins en lokaal patroonoverzicht
- Adem-, grondings-, prikkelpauze- en ontspanningstools
- Lichtpuntjes, fijne-dingenlijst en zachte activiteiten
- Dagplan, dankbaarheidsnotitie en energiebescherming
- Privédagboek met eigen wachtwoord en AES-GCM-versleuteling
- PBKDF2-sleutelafleiding met 250.000 iteraties
- Donkere, prikkelarme, grote-tekst- en hoog-contrastmodus
- Lokaal steuncontact en crisisopties
- Offline gebruik na eerste websitesessie

## Lokaal testen
Open `index.html` voor een snelle visuele test. Service workers, installatie en Web Crypto werken het betrouwbaarst via `localhost` of HTTPS.

Met Python lokaal starten:
```bash
python3 -m http.server 8000
```
Open daarna `http://localhost:8000`.

## Online zetten met GitHub Pages
1. Maak een repository, bijvoorbeeld `rustpunt-plus`.
2. Upload alle bestanden uit deze map naar de hoofdmap.
3. Ga naar Settings > Pages.
4. Kies Deploy from a branch, `main`, `/root`.
5. Open de HTTPS-link die GitHub toont.

## Installeren
- Android/Chrome: menu > App installeren of Toevoegen aan startscherm.
- iPhone/Safari: Delen > Zet op beginscherm.

## Belangrijk over dagboekbeveiliging
Het dagboek wordt met Web Crypto lokaal versleuteld. Het wachtwoord wordt niet opgeslagen. Zonder wachtwoord kunnen notities niet worden hersteld. Browseropslag kan verdwijnen door het wissen van websitegegevens, een toestelreset of privéstand. Exporteer daarom regelmatig het versleutelde dagboekbestand. De export kan in deze versie nog niet automatisch worden teruggezet.

## Veiligheid
SerenaMind stelt geen diagnose en vervangt geen huisarts, psycholoog of behandeling. Laat inhoud en gebruikerservaring vóór publieke uitgave beoordelen door bevoegde GGZ-professionals, ervaringsdeskundigen, privacy- en toegankelijkheidsspecialisten. Controleer noodnummers per land wanneer je internationaal publiceert.

## Registratie en accounts
Deze versie heeft lokale accounts. Een account bestaat alleen in de browser op het apparaat waarop het is gemaakt. De wachtwoordcontrole wordt lokaal opgeslagen als hash met een unieke salt. De profielgegevens en foto blijven lokaal. Dit is geschikt voor een prototype, maar nog niet voor echte synchronisatie of publiek accountbeheer. Voor productie zijn een beveiligde backend, e-mailverificatie, herstelprocedure, rate limiting, sessiebeheer, privacyverklaring en beveiligingsonderzoek nodig.
