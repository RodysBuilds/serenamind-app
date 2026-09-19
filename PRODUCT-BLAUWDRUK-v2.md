# SerenaMind 2.0 - Productblauwdruk

## Status
Dit pakket is een uitgebreide product- en beveiligingsblauwdruk met een interactieve prototypeomgeving. Het is nadrukkelijk nog geen productiegeschikt medisch dossier, GGZ-platform of UWV-beoordelingssysteem.

## Portalen
1. Clientportaal: vandaag, noodrust, emoties, woede, meditatie, slaap, dagboek, communicatie, werk & participatie en toestemmingen.
2. Begeleidersportaal: uitsluitend expliciet gedeelde doelen, afspraken, signaleringsplan, communicatiepaspoort, acties, rapportvoorstellen en toegangslog.
3. Organisatiebeheer: rollen, apparaten, auditlog, beveiliging en herstelverzoeken. Geen inhoudelijke toegang tot dagboek, chat of audio.

## Gegevenskluizen
- Persoonlijke kluis: alleen client.
- Samenwerkingskluis: client plus specifiek goedgekeurde begeleider.
- Organisatiekluis: technische metadata en rollen, geen inhoudelijke gezondheidsinformatie.

## Prioriteit voor productie
- Server-side registratie via Supabase Edge Functions.
- Echte end-to-end encryptie en sleutelbeheer.
- Apparaatverificatie, sleutelrotatie en veilige herstelprocedure.
- DPIA, NEN 7510-advies, penetratietest en toegankelijkheidsonderzoek.
- Professionele GGZ-inhoudsreview en test met ervaringsdeskundigen.
