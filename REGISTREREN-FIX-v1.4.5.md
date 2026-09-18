# Registreren-fix v1.4.5

De tabknoppen Inloggen en Registreren worden nu altijd geïnitialiseerd, ook als Supabase actief is. De vorige cloudcontrole stopte de UI-initialisatie te vroeg. Voor iPhone zijn zowel click als touchend afgehandeld en het authenticatiescherm kan netjes verticaal scrollen.
