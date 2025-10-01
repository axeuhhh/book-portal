sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
docker info
touch Dockerfile
ls
nano Dockerfile
docker build -t hello-world .
[200~docker images --filter reference=hello-world
~docker images --filter reference=hello-world
docker images --filter reference=hello-world
docker run -t -i -p 80:80 hello-world
aws ecr create-repository     --repository-name hello-repository     --region us-east-1
aws configure
aws ecr create-repository     --repository-name hello-repository     --region us-east-1
aws configure
aws ecr create-repository     --repository-name hello-repository     --region us-east-1
https://signin.aws.amazon.com/switchrole?roleName=LabRole&account=533267351816
curl http://169.254.169.254/latest/meta-data/iam/info
aws sts get-caller-identity --region us-east-1
reboot
sudo reboot
aws sts get-caller-identity --region us-east-1
aws ecr create-repository     --repository-name hello-repository     --region us-east-1
aws ecr create-repository
aws ecr create-repository     --repository-name hello-repository     --region us-east-1
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533267351816.dkr.ecr.us-east-1.amazonaws.com
docker images
docker login
 docker login
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 533267351816.dkr.ecr.us-east-1.amazonaws.com
sudo yum update -y
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo yum install git -y
cd your-repo
mkdir -p book-portal-be/src
touch book-portal-be/pom.xml
mkdir -p book-portal-fe/src
mkdir -p book-portal-fe/nginx
touch book-portal-fe/nginx/nginx.conf
touch book-portal-fe/package.json
mkdir nginx
touch nginx/nginx.conf
touch docker-compose.yml
mkdir -p book-portal-be/src
touch book-portal-be/pom.xml
mkdir -p book-portal-fe/src
mkdir -p book-portal-fe/nginx
touch book-portal-fe/nginx/nginx.conf
touch book-portal-fe/package.json
mkdir nginx
touch nginx/nginx.conf
touch docker-compose.yml
LS
ls
ssh -T git@github.com
ssh-keygen -t ed25519 -C "apndombasi@dons.usfca.edu"
ssh -T git@github.com
cd book-portal-be
nano pom.xml
ls
cd src
ls
mkdir main/java/com/example/demo/DemoApplication.java
mkdir main
ls
cd main/
mkdir java
nano DemoApp.java
ls
cd 
ls
cd book-portal-be/
nano Dockerfile
cd ../book-portal-fe/
nano package.json
ls
cd src/
ls
nano App.js
nano Dockerfile
ls
cd ..
ls
cd nginx/
ls
nano nginx.conf 
cat nginx.conf 
ls
cd
ls
cd nginx/
ls
nano Dockerfile
nano nginx.conf 
ls
cd
nano docker-compose.yml
docker-compose up --build
sudo curl -L "https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
docker-compose up --build
sudo docker-compose up --build
docker-compose up --build
sudo docker-compose up --build
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
docker compose version
#!/bin/bash
set -e
# Update system
sudo yum update -y
# Install Docker
sudo yum install -y docker
# Start & enable Docker service
sudo systemctl start docker
sudo systemctl enable docker
# Add ec2-user to docker group
sudo usermod -a -G docker ec2-user
# Install Docker Compose (latest release v2.27.0, update if newer available)
sudo curl -L "https://github.com/docker/compose/releases/download/v2.27.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
# Apply permissions
sudo chmod +x /usr/local/bin/docker-compose
# Print versions
docker --version
docker-compose --version
echo "✅ Docker & Docker Compose installed successfully."
echo "⚠️ Log out and back in (or run 'newgrp docker') to use Docker without sudo."
docker-compose 
docker-compose  up --build
docker-compose build book-portal-be
l
ls
cd book-portal-be/src/main/java/
ls
nano DemoApp.java
ls
docker-compose  up --build
ls
powd
pwd
ls
mkdir -p ~/book-portal-be/src/main/java/com/example/demo
mv ~/book-portal-be/src/main/java/DemoApp.java ~/book-portal-be/src/main/java/com/example/demo/DemoApplication.java
nano ~/book-portal-be/src/main/java/com/example/demo/DemoApplication.java
docker-compose  up --build
ls ~/book-portal-be/Dockerfile
cat ~/book-portal-be/Dockerfile 
cd ~/bookportal
docker-compose build book-portal-be
docker-compose up --build -d
find ~ -maxdepth 2 -name docker-compose.yml
ls -l /home/ec2-user/book-portal-be/Dockerfile
cd /home/ec2-user
docker-compose build
nano docker-compose.yml 
ls
nanp Dockerfile 
nano Dockerfile 
cd /home/ec2-user
tree -L 3
sudo yum install -y tree
tree -L 3
mv /home/ec2-user/book-portal-fe/src/Dockerfile /home/ec2-user/book-portal-fe/Dockerfile
rm /home/ec2-user/Dockerfile
tree -L 3
cd /home/ec2-user
docker-compose build --no-cache
docker-compose up -d
# build front-end
FROM node:alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
# Copy dependency files first
COPY package.json package-lock.json* ./
# Install dependencies (including devDependencies)
RUN npm install --include=dev --silent
# Copy source code
COPY . .
# Build React app
RUN npm run build
# serve build with nginx
FROM nginx:alpine
COPY --from=build /app/build /usr/share/nginx/html
RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx/nginx.conf /etc/nginx/conf.d
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
cd book-portal-fe/
nano Dockerfile 
RUN npm install --include=dev --silent
npm install --include=dev --silent
rm -rf Dockerfile 
nano Dockerfile 
cd /home/ec2-user
docker-compose build book-portal-fe
nano /home/ec2-user/book-portal-fe/package.json
docker-compose build book-portal-fe
mkdir -p /home/ec2-user/book-portal-fe/public
nano /home/ec2-user/book-portal-fe/public/index.html
cd /home/ec2-user
docker-compose build --no-cache book-portal-fe
docker-compose up -d
nano /home/ec2-user/book-portal-fe/src/index.js
nano /home/ec2-user/book-portal-fe/src/App.js
cd /home/ec2-user
docker-compose build --no-cache book-portal-fe
docker-compose up -d
docker login -u axeuhhh
docker tag ec2-user-book-portal-be axeuhhh/book-portal-be:latest
docker push axeuhhh/book-portal-be:latest
# Frontend
docker tag ec2-user-book-portal-fe axeuhhh/book-portal-fe:latest
docker push axeuhhh/book-portal-fe:latest
# Proxy
docker tag ec2-user-proxy axeuhhh/book-portal-proxy:latest
docker push axeuhhh/book-portal-proxy:latest
ls
nano docker-compose.yml 
rm -rf docker-compose.yml 
nano docker-compose.yml 
docker-compose pull
docker-compose up -d
docker-compose up
