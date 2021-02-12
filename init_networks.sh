# Create docker network to reach host
docker network create -d bridge --subnet 192.168.0.0/24 --gateway 192.168.0.1 keycloaknet

# Firewall rules
apt install ufw 
ufw default DENY
ufw allow proto tcp from 192.168.0.0/24 to 192.168.0.1 port 8080
ufw allow 80/tcp
ufw allow 443/tcp

