# 🏥 Projet ISI – Informatisation d'un Cabinet Médical

## Année académique

**2025 – 2026**

## Module

**Bases de Données**

## Membres du groupe

* Aïssatou Ndao
* ..........................................
* ..........................................

## Description du projet

Ce projet a pour objectif de concevoir un système d'information permettant l'informatisation du dossier médical d'un cabinet médical.

Le système proposé remplace l'organisation actuelle basée sur des fichiers Excel et des dossiers papier par une base de données centralisée, sécurisée et facilement accessible par les médecins et la secrétaire.

Deux solutions sont étudiées :

* une solution basée sur une base de données relationnelle ;
* une solution basée sur une base de données objet-relationnelle.

Le projet permet d'assurer une meilleure gestion des patients, des visites, des ordonnances, des médicaments, des analyses médicales et de l'historique médical.

---

# Objectifs

* Informatiser entièrement le dossier médical des patients.
* Centraliser les informations médicales.
* Faciliter le travail des médecins.
* Garantir la confidentialité des données.
* Assurer le suivi complet des consultations.
* Conserver l'historique médical des patients.
* Améliorer la gestion des prescriptions et des analyses.

---

# Fonctionnalités principales

Le système permet de gérer :

* les patients ;
* les médecins ;
* les consultations (visites) ;
* les ordonnances ;
* les médicaments ;
* les prescriptions médicales ;
* les examens complémentaires ;
* les résultats d'analyses ;
* les allergies ;
* les maladies ;
* les hospitalisations ;
* les opérations chirurgicales.

---

# Technologies utilisées

* Modélisation MERISE
* Diagramme Entité/Association
* Modèle Relationnel
* SQL
* PostgreSQL / Oracle SQL (selon le SGBD choisi)
* Git
* GitHub

---

# Structure du projet

```
Projet-ISI/
│
├── Documentation/
│   ├── Rapport.docx
│   ├── MCD.pdf
│   ├── MLD.pdf
│   └── Dictionnaire_des_donnees.pdf
│
├── SQL/
│   ├── creation_base.sql
│   ├── insertion.sql
│   ├── triggers.sql
│   └── requetes.sql
│
├── Images/
│
├── README.md
│
└── .gitignore
```

---

# Organisation de la base de données

La base de données est organisée autour des principales entités suivantes :

* Patient
* Médecin
* Consultation
* Ordonnance
* Médicament
* Prescription
* Analyse
* Résultat
* Allergie
* Maladie
* Hospitalisation
* Opération

Les relations entre ces entités permettent de conserver l'ensemble de l'historique médical de chaque patient.

---

# Sécurité des données

Le système met en place plusieurs règles de sécurité :

* accès réservé aux utilisateurs autorisés ;
* authentification des utilisateurs ;
* confidentialité des informations médicales ;
* accès prioritaire du médecin traitant ;
* consultation autorisée pour les autres médecins du cabinet en cas d'absence du médecin traitant ;
* accès limité de la secrétaire aux informations administratives.

---

# Livrables

Le projet contient :

* le rapport complet ;
* le diagramme Entité/Association (MCD) ;
* le modèle logique de données (MLD) ;
* le dictionnaire de données ;
* les scripts SQL de création de la base ;
* les scripts SQL des triggers ;
* les scripts d'insertion ;
* les requêtes SQL.

---

# Gestion du projet avec Git

Le projet est géré avec Git et GitHub.

Les bonnes pratiques suivantes ont été respectées :

* création d'un dépôt GitHub ;
* utilisation de branches de développement ;
* commits réguliers et descriptifs ;
* suivi des différentes tâches du projet.

---

# Installation

1. Cloner le dépôt Git :

```bash
git clone <url-du-repository>
```

2. Ouvrir le projet.

3. Exécuter le script :

```sql
creation_base.sql
```

4. Exécuter ensuite :

```sql
insertion.sql
```

5. Enfin exécuter :

```sql
triggers.sql
```

---

# Auteur(s)

Projet réalisé dans le cadre du module **Bases de Données**.

Année académique **2025–2026**.

---

# Remerciements

Nous remercions notre enseignant pour son accompagnement ainsi que toutes les ressources pédagogiques ayant permis la réalisation de ce projet.
