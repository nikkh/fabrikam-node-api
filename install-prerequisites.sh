echo "Starting prerequisites installation script run" && sudo apt-get update && curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs && sudo apt-get install npm && sudo apt-get install -y nginx && sudo rm -f /etc/nginx/sites-enabled/default && sudo cp node-app-nginx-config /etc/nginx/sites-available/ && sudo ln -sf /etc/nginx/sites-available/node-app-nginx-config /etc/nginx/sites-enabled/node-app-nginx-config && sudo service nginx restart && sudo npm install -g pm2 && sudo pm2 save && echo "End of script run"
