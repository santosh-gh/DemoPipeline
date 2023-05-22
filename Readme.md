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


Application (client) ID
:
82a3794b-7762-4f44-af35-5e08bd75b6f8
Object ID
:
11670ca7-4df0-42ec-831d-bfbda6ccf007
Directory (tenant) ID
:
ec3ded2c-750b-415f-b382-96464321f3cf


secret value - QRY8Q~p~Z6xejiSxpn3SpdHFtszIfWwi4r-~Qa_B
secret id - 106abe20-7d2d-4d55-840c-619086f71fe7

az ad sp create-for-rbac  --role admin --scopes /subscriptions/b798c28b-e334-4ecf-b338-ec314ced3616

az ad sp create-for-rbac --name myServicePrincipalName --role owner --scopes /subscriptions/b798c28b-e334-4ecf-b338-ec314ced3616/resourceGroups/aks-rg


{
  "appId": "781b9b5b-06ed-4737-b392-63dec44f7ae8",
  "displayName": "azure-cli-2023-05-22-12-29-14",
  "password": "DKu8Q~-e.ygyp~o3C_vy2hFGQhCmhrKVzLEYedco",
  "tenant": "ec3ded2c-750b-415f-b382-96464321f3cf"
}

{
  "appId": "8a3e03b5-235f-43e8-8a46-60aaa1bde43a",
  "displayName": "myServicePrincipalName",
  "password": "~uq8Q~vGpq2Mth2aUkgDmoy3fSWnA_0P02_Seapj",
  "tenant": "ec3ded2c-750b-415f-b382-96464321f3cf"
}