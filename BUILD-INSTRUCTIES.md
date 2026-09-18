# SerenaMind bouwen als echte app

## Benodigd
- Node.js LTS en Git
- Android Studio voor Android
- Een Mac met Xcode voor iPhone/iPad
- Supabase-project
- Firebase-project voor Android-push
- Apple Developer-account voor App Store en APNs

## Project starten
```bash
cp .env.example .env
npm install
npm run serve
```

## Native projecten maken
```bash
npm run build
npx cap add android
npx cap add ios
npx cap sync
```

Android openen:
```bash
npx cap open android
```

iOS openen, alleen op macOS:
```bash
npx cap open ios
```

## Backend
1. Maak een Supabase-project.
2. Voer `supabase-schema.sql` uit in de SQL Editor.
3. Vul `.env` met project-URL en anon key.
4. Stel Auth redirect-URL in op `nl.serenamind.app://auth/callback` en voeg dezelfde deep link native toe.
5. Configureer eigen SMTP voordat echte gebruikers worden toegelaten.

## Stores
- Android: kies een definitieve package-id, maak een signing keystore, bouw een Android App Bundle en upload naar Play Console.
- iOS: kies een definitieve bundle-id, configureer signing/capabilities, archiveer in Xcode en upload naar App Store Connect.

## Niet overslaan
Privacyverklaring, voorwaarden, accountverwijdering, gegevensretentie, medische disclaimer, leeftijdskeuze, toegankelijkheidstest, GGZ-inhoudsreview, beveiligingsaudit en noodnummers per publicatieland.

## Lokale telefoonmeldingen activeren
Na `npm install` en het toevoegen van iOS/Android:
```bash
npx cap sync
```
Open daarna Xcode of Android Studio. De app vraagt bij het eerste plannen om meldingstoestemming. Test op een echt toestel met **Test melding over 10 seconden**. Op iOS moet je signing correct instellen. Lokale meldingen hebben geen server nodig; synchronisatie van taken tussen apparaten en servergestuurde push wel.
