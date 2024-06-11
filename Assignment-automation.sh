#!/bin/bash

# Clone repositories
git clone https://github.com/webapp-repo.git /path/to/webapp
git clone https://github.com/api-repo.git /path/to/api

# Build and restart applications
cd /path/to/webapp
npm install
npm run build
sudo systemctl restart nginx

cd /path/to/api
npm install
npm run build
sudo systemctl restart nginx
