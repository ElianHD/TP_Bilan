# TP_Bilan Zabix et Worpress sur CT debian 12

## 📦 Déploiement Docker : WordPress & Zabbix

Ce dépôt contient plusieurs environnements Docker prêts à l’emploi :

- **Dossier `wordpress/`** : stack WordPress + MySQL
    
- **Dossier `zabbix/`** : stack Zabbix Appliance
    
- **Script `install_docker.sh`** : installation automatique de Docker sur la machine
    
 - **Script `install_docker.sh`** : installation automatique de Docker sur la machine


---
## ⚠️ **IMPORTANT — Debian 12 : installation obligatoire de containerd.io**

Depuis les changements de dépendances sur **Debian 12 (Bookworm)**, vous devez **impérativement** installer une version compatible de `containerd.io` avant Docker.

Exécutez cette commande **obligatoire** :

`sudo apt install containerd.io=1.7.28-1~debian.12~bookworm`

Sans cette version, Docker ne pourra pas s’installer correctement.

---
## 🚀 WordPress + MySQL

Le fichier `docker-compose.yml` dédié se trouve dans :

`wordpress/docker-compose.yml`

### ▶️ Lancement

`cd wordpress docker compose up -d`

### 🌐 Accès à WordPress

Ouvrez votre navigateur à l’adresse suivante :

`http://IPDEVOTREMACHINE:8081`

---

## 📊 Zabbix

Le fichier `docker-compose.yml` de Zabbix est situé dans :

`zabbix/docker-compose.yml`

### ▶️ Lancement

`cd zabbix docker compose up -d`

### 🌐 Accès à l’interface Zabbix

`http://IPDEVOTREMACHINE:8082`

### 🔑 Identifiants par défaut

- **Utilisateur** : Admin
    
- **Mot de passe** : zabbix
    

---

## ⏹️ Arrêt des services

### WordPress

`cd wordpress docker compose down`

### Zabbix

`cd zabbix docker compose down`