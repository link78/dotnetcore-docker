#!/bin/sh

url=https://github.com/link78/dotnetcore-docker.git

#az acr create --resource-group devops-rg --name fasoacreast --sku Standard --location eastus
#az acr build --registry fasoacreast --image fasoappeast:v1 .
az appservice plan create --name fasoplaneast --resource-group devops-rg --location eastus --sku s1
az webapp create --name fasoappeast --resource-group devops-rg --plan fasoplaneast --deployment-source-url $url 




#az acr create --resource-group devops-rg --name fasoacrwest --sku Standard --location westus
#az acr build --registry fasoacrwestus --image fasoappwest:v1 .
az appservice plan create --name fasoplanwest --resource-group devops-rg --location westus --sku s1
az webapp create --name fasoappwest --resource-group devops-rg --plan fasoplanwest --deployment-source-url $url 




echo "displaying web app:  "
az webapp list -o table
