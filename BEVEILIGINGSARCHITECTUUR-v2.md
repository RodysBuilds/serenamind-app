# SerenaMind 2.0 - Beveiligingsarchitectuur

## Gewenst model
De server bewaart uitsluitend versleutelde inhoud. Alleen goedgekeurde eindapparaten bezitten ontsleutelsleutels.

## Sleutels
- Unieke apparaatidentiteit per toestel.
- Afzonderlijke sleutel voor privédagboek, audio en iedere samenwerkingsrelatie.
- Sleutelrotatie bij intrekken van toegang.
- Herstelcode is geen leesbaar databaseveld.
- Geen service-role key, private key of ontsleutelsleutel in GitHub Pages.

## Delen
De client kiest ontvanger, doel, onderdelen, rechten en einddatum. Instanties ontvangen bij voorkeur tijdelijke doelgebonden exports in plaats van brede portaaltoegang.

## Portaalgrenzen
Begeleiders kunnen voorstellen doen, maar niet stil wijzigen. Organisatiebeheerders beheren rollen en incidenten, niet de persoonlijke inhoud.

## Nog te implementeren
Deze repository bevat geen geaudite E2EE-protocolimplementatie. Gebruik voor productie een beoordeelde cryptografische bibliotheek en laat sleutelbeheer extern auditen.
