# Microservice Series - From Zero to Hero
https://www.programmingwithwolfgang.com/microservice-series-from-zero-to-hero

# Creating a dynamic Pull Request environment with Azure Pipelines
https://samlearnsazure.blog/2020/02/27/creating-a-dynamic-pull-request-environment-with-azure-pipelines/

# Helm 3 - CI/CD with Azure DevOps using Azure Container Registry (ACR) and Azure Kubernetes Service (AKS)
https://www.visualstudiogeeks.com/devops/helm/deploying-helm-chart-with-azdo

https://kshyam.medium.com/deploy-asp-net-core-application-on-aks-with-helm-through-azure-devops-b34a31241e97

We can modify the content of the ado-ci-pipeline.yml file to include following steps.
Restore dotnet packages
Build dotnet project
Publish dotnet project
Publish artifact



git branch
git checkout -b feature


Topics
Create Azure container registry.
Create AKS cluster.
Dockerfile
Helm Chart
Create build pipeline (Docker build and push)
Create release pipeline (deploy app to ak
- Configuring SonarCloud in a Pipeline

pat-sonar-cloud token
poec3ibukf73vqdvp7fwqormmafqre3lvbb6hwkpwklzrslac2dq


# AKS
az group create --name aks-rg --location southindia

az aks create -g aks-rg -n myAKSCluster --enable-managed-identity --node-count 1 --generate-ssh-keys

az aks get-credentials --resource-group aks-rg --name myAKSCluster


az ad sp create-for-rbac --name myServicePrincipalName --role owner --scopes /subscriptions/b798c28b-e334-4ecf-b338-ec314ced3616/resourceGroups/aks-rg