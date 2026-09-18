# SerenaMind authenticatie v1.5.0

## E-mailbevestiging repareren
Supabase > Authentication > URL Configuration:
- Site URL: `https://rodysbuilds.github.io/serenamind-app/`
- Redirect URL: `https://rodysbuilds.github.io/serenamind-app/**`

De app stuurt nieuwe bevestigingsmails nu expliciet naar `?auth=confirmed&version=1.5.0`. Stuur voor bestaande mislukte accounts een nieuwe bevestigingsmail of registreer opnieuw na verwijdering van de testgebruiker.

## Google
Supabase > Authentication > Sign In / Providers > Google. Maak in Google Cloud een OAuth Web Client. Gebruik de callback URL die Supabase in het Google-providerpaneel toont. Vul Client ID en Client Secret in en activeer Google.

## Apple
Supabase > Authentication > Sign In / Providers > Apple. Hiervoor is een Apple Developer-account, Services ID, redirect URI, Team ID, Key ID en private key nodig. Gebruik exact de callback URL die Supabase toont.

## Telefooncode
Supabase > Authentication > Sign In / Providers > Phone. Koppel een ondersteunde SMS-provider en activeer Phone. Zonder SMS-provider kan Supabase geen echte codes versturen. Gebruik telefoonnummers in internationaal formaat, bijvoorbeeld `+31612345678`.

Gebruik nooit OAuth client secrets, Apple private keys of SMS-providergeheimen in `config.js` of GitHub. Die worden alleen in Supabase Dashboard opgeslagen.
