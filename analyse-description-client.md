# Analyse de la description client

## 1. Le projet

C'est une **plateforme pour entreprise transitaire**.

Le principe metier :
- Le **client est au Cameroun** et veut acheter un produit.
- Le proprietaire est base au Canada et achete le produit la-bas pour le compte du client.
- Le proprietaire possede **sa boutique au Cameroun**.
- Le proprietaire envoie le produit dans sa boutique au Cameroun pour que le client le **recupere**.

## 2. Fonctionnement cote client

- Le client envoie la **photo du produit** souhaite avec ses **caracteristiques**.
- Le client et le proprietaire **discutent des modalites** via un **canal de messagerie instantanee**.

## 3. Gestion administrateur (back-office)

L'administrateur doit pouvoir gerer :
- la **gestion des commandes**
- la **gestion des produits**
- la **gestion du personnel**
- la **gestion du chiffre d'affaires**
- la **gestion comptable**

## 4. Livrables attendus

- une **application web interactive**
- un **site web**

## 5. Contraintes techniques et de design

### Design
- Theme **black and white**, avec **dominance du blanc**.
- **Pas de donnees fictives** (contenu reel uniquement).
- **Pas de longs tirets** entre les mots.
- **Pas d'icones bizarres** : utiliser **Lucide charts** (icones Lucide).

### Technique
- Developpement en **Flutter** (au lieu de TypeScript) afin de pouvoir evoluer facilement vers une **application mobile**.
- Base sur **Firebase**.

## 6. Points a clarifier (non precises dans la description)

1. Services Firebase a utiliser (Auth, Firestore, Storage, Cloud Functions, Hosting).
2. Gestion des roles et permissions (admin, personnel, client).
3. Implementation de la messagerie instantanee (Firestore temps reel ou service tiers).
4. Gestion des paiements et suivi des colis (tracking).
