##!/bin/bash
# Mise à jour du système
echo " Mise à jour du système..."
sudo apt update -y && sudo apt upgrade -y

# Installer Nginx
echo " Installation de Nginx..."
sudo apt install nginx -y

# Activer et démarrer le service
echo " Activation et démarrage de Nginx..."
sudo systemctl enable nginx
sudo systemctl start nginx

# Déployer un mini site HTML
echo " Déploiement du mini site..."
sudo bash -c 'cat > /var/www/html/index.html << EOF
<!DOCTYPE html>
<html>
<head>
    <title>Serveur de Mohamed</title>
<meta charset="UTF-8">
</head>
<body>
    <h1> Serveur déployé automatiquement</h1>
</body>
</html>
EOF'

# Installation PostgreSQL
echo " Installation de PostgreSQL..."
sudo apt install postgresql postgresql-contrib -y
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Vérifier des deux ports
echo " Vérification des ports..."
sudo ss -tuln | grep -E ":80|:5432"

# Vérification des services 
echo "Status des services :"
sudo systemctl status nginx --no-pager
sudo systemctl status postgresql --no-pager

# Afficher les logs
echo " Affichage des 5 dernières lignes des logs de Nginx..."
sudo tail -n 5 /var/log/nginx/access.log
sudo tail -n 5 /var/log/nginx/error.log

echo "Affichage des 5 dernières lignes des logs de PostgreSQL..."
sudo tail -n 5 /var/log/postgresql/postgresql-*.log


echo " Script terminé ! Serveur Nginx et PostgreQSL sont prêt à être déployé  et accessible."
