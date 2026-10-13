# Plan de developpement - Le Clochard

Plateforme pour entreprise transitaire (Canada vers Cameroun).

## 1. Objectif

Permettre a un client au Cameroun de commander un produit achete au Canada,
de discuter des modalites avec l'entreprise, de suivre son colis et de le
recuperer dans la boutique au Cameroun.

## 2. Applications a realiser

| Application | Public | Plateformes |
| --- | --- | --- |
| Client | Clients | Android, iOS, Web, macOS, Windows |
| Admin / Employe | Administrateur et personnel | Android, iOS, Web |
| Website | Public | Web (site vitrine) |

Code partage via un monorepo Dart/Pub (workspace).

## 3. Architecture technique

| Element | Choix |
| --- | --- |
| Framework | Flutter (Dart 3.12) |
| Backend | Firebase (Auth, Firestore, Storage, Functions, Hosting, FCM) |
| Cloud Functions | TypeScript |
| State management | Riverpod |
| Navigation | go_router |
| Icones | lucide_icons |
| Workspace | Pub workspaces (natif Dart) |

### Structure du depot

```
le_clochard/
  pubspec.yaml            # racine du workspace
  apps/
    client/               # 5 plateformes
    admin/                # admin + employe, 3 plateformes
    website/              # site vitrine (web)
  packages/
    core/                 # modeles, services Firebase, auth
    ui/                   # design system black & white
  firebase/
    functions/            # Cloud Functions TypeScript
    firestore.rules
    storage.rules
    firestore.indexes.json
```

## 4. Roles et permissions

- `client` : commande, discute, suit son colis.
- `employe` : gere la boutique Cameroun (reception, remise).
- `admin` : gestion operationnelle et comptable.
- `proprietaire` : super administrateur.

## 5. Modele de donnees (Firestore)

- `users` : role, nom, telephone, pays, boutique.
- `shops` : boutiques au Cameroun.
- `products` : photos, caracteristiques, prix.
- `orders` : client, produit, statut, montants, dates.
- `orderTracking` : etapes du colis Canada vers Cameroun.
- `conversations` / `messages` : messagerie temps reel.
- `staff` : personnel.
- `transactions` : chiffre d'affaires, comptabilite.
- `notifications`.

## 6. Modules fonctionnels

### Client
Authentification, demande de produit (photo + caracteristiques),
messagerie, suivi de commande, historique, profil.

### Admin / Employe
Tableau de bord (CA, commandes), gestion des commandes (workflow),
gestion des produits, gestion du personnel, messagerie,
comptabilite et chiffre d'affaires, parametres.

### Website
Presentation de l'entreprise, services, contact.

## 7. Design system

- Theme black and white, dominance du blanc.
- Icones Lucide uniquement, pas d'icones bizarres.
- Pas de donnees fictives.
- Pas de longs tirets entre les mots.

## 8. Roadmap

| Phase | Contenu | Livrable |
| --- | --- | --- |
| 0. Fondations | workspace, packages ui/core, design system, apps | squelette buildable |
| 1. Auth & roles | Firebase Auth, gestion des roles, guards | connexion fonctionnelle |
| 2. App Client MVP | demande produit, liste commandes, tracking | app client utilisable |
| 3. Messagerie | chat temps reel Firestore, FCM | discussion client / admin |
| 4. Back-office Admin | commandes (workflow), produits, personnel | gestion operationnelle |
| 5. Comptabilite | transactions, chiffre d'affaires, rapports | gestion comptable |
| 6. Website | site web public | site en ligne |
| 7. Durcissement | regles de securite, App Check, Analytics, tests | pret production |
| 8. Deploiement | 5 plateformes client, 3 admin, Hosting | mise en ligne |

## 9. Points a valider

1. Auth : email / mot de passe seul, ou + Google / telephone.
2. Paiements : integres (Mobile Money / Stripe) ou hors app.
3. Priorite initiale : app Client ou back-office.
