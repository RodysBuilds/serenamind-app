# SerenaMind productie-roadmap

## Basisstack
- Webinterface: bestaande SerenaMind HTML/CSS/JS, later bij voorkeur TypeScript.
- Native verpakking: Capacitor voor Android Studio en Xcode.
- Backend: Supabase Auth, Postgres, Storage en Edge Functions.
- Push: Firebase Cloud Messaging voor Android en APNs voor iOS, aangestuurd door een beveiligde serverfunctie.
- E2EE: client-side AES-GCM; per gebruiker een data-encryptiesleutel. Upload uitsluitend ciphertext en nonce. Bewaar de sleutel in iOS Keychain / Android Keystore en bied een afzonderlijke, door de gebruiker bewaarde recovery key.

## Tien gevraagde onderdelen
1. Synchronisatie: `encrypted_items` per gebruiker, timestamps, soft deletes en conflictbeleid.
2. E2EE-cloudsync: versleutel voor upload; server ziet geen inhoud. Laat cryptografie extern auditen.
3. Wachtwoordherstel: Supabase e-mail recovery met deep link terug naar de app. Dit herstelt het accountwachtwoord, niet automatisch de E2EE-sleutel.
4. 2FA: Supabase TOTP enrollment, challenge en verify; bescherm gevoelige routes met AAL2.
5. Push: registreer native tokens en verstuur via serverfunctie. Pushberichten mogen nooit dagboektekst bevatten.
6. Biometrie: ontgrendel alleen een sleutel uit Keychain/Keystore met Face ID/Touch ID/Android biometrie; biometrie is geen cloudwachtwoord.
7. Widgets: aparte SwiftUI WidgetKit extension en Android Glance AppWidget. Toon alleen veilige, niet-gevoelige inhoud.
8. Watch: watchOS target met SwiftUI/WidgetKit; Wear OS module met Compose/Glance. Begin met ademtimer en check-in.
9. Spraak: neem native op, versleutel bestand direct met een unieke filesleutel en upload alleen ciphertext. Verwijder tijdelijke plaintext onmiddellijk.
10. Vertaling: verplaats alle teksten naar locale JSON; voeg Nederlands en Engels toe; test lange teksten, RTL en noodnummers per land.

## Volgorde
Fase 1: Supabase-project, e-mailauth, profielen, RLS en account verwijderen.
Fase 2: E2EE-ontwerp, recovery key, synchronisatie en migratie van lokale data.
Fase 3: Capacitor, Android/iOS builds, biometrie, deep links en push.
Fase 4: privacy, toegankelijkheid, content review, penetratietest en stores.
Fase 5: widgets, watches, audio en extra talen.

## Belangrijke grens
Zonder Supabase-, Firebase- en Apple-accounts, domein, bundle-id, signing keys en privacydocumenten kan een downloadbaar project wel worden voorbereid maar niet volledig operationeel of gepubliceerd worden.
