# 🚀 Challenge Cloud & DevOps 

Ce dépôt documente mon apprentissage des technologies Cloud.

## 🏗️ Fondations Linux & Automatisation Bash
L'objectif était de comprendre comment déployer une stack web complète à partir de zéro sur Ubuntu.

### Ce que j'ai réalisé :
* **Scripting Bash** : Automatisation de l'installation de Nginx et PostgreSQL.
* **Gestion Réseau** : Configuration des ports 80 et 5432.
* **Supervision** : Vérification des statuts des services avec `systemctl`.

### 🚀 Installation
Pour déployer la stack complète (Nginx & PostgreSQL) :
```bash
chmod +x install_all.sh
./install_all.sh
```

 ## 🕵️ Gestion des Logs & Auto-remédiation
Mise en place d'un système pour surveiller et relancer les services en cas de plantage.

### Ce que j'ai réalisé :
* **Détection & Relance** : Création d'un script qui vérifie l'état de Nginx/Postgres et les relance automatiquement s'ils sont éteints.
* **Journalisation (Logs)** : Création d'un fichier `mon_journal.log` pour tracer les succès et les erreurs avec horodatage (`date`).
* **Automatisation Cron** : Planification du script pour une surveillance toutes les minutes.

### 🔍 Comment suivre les logs en direct ?
Pour voir le serveur travailler et noter ses rapports en temps réel :

```bash
tail -f mon_journal.log
```

## 🔄 Disponibilité & Résilience
Objectif : Garantir que la surveillance tourne sans interruption.

### Ce que j'ai réalisé :
* **Persistance** : Configuration de Cron pour que le monitoring soit actif 24h/24.
* **Autonomie** : Validation du fonctionnement du script en arrière-plan sans session utilisateur ouverte.
