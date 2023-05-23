# Microservice Series - From Zero to Hero
https://www.programmingwithwolfgang.com/microservice-series-from-zero-to-hero

# Creating a dynamic Pull Request environment with Azure Pipelines
https://samlearnsazure.blog/2020/02/27/creating-a-dynamic-pull-request-environment-with-azure-pipelines/

# Helm 3 - CI/CD with Azure DevOps using Azure Container Registry (ACR) and Azure Kubernetes Service (AKS)
https://www.visualstudiogeeks.com/devops/helm/deploying-helm-chart-with-azdo

https://kshyam.medium.com/deploy-asp-net-core-application-on-aks-with-helm-through-azure-devops-b34a31241e97

# Deploying AKS Cluster using Azure Pipeline and Terraform
https://www.stackgenie.io/deploying-aks-cluster-using-azure-pipeline-and-terraform

# Create a private Azure Kubernetes Service cluster using Terraform and Azure DevOps
https://github.com/Azure-Samples/private-aks-cluster-terraform-devops

# Azure Pipelines for Private AKS Clusters
https://colinsalmcorner.com/azure-pipelines-for-private-aks-clusters/

# Simple and fast CI/CD as a code for Kubernetes using Azure DevOps
https://www.educative.io/answers/simple-and-fast-ci-cd-as-a-code-for-kubernetes-using-azure-devops

# Authenticate with Azure Container Registry from Azure Kubernetes Service
https://learn.microsoft.com/en-us/azure/aks/cluster-container-registry-integration?tabs=azure-cli

# GitHub: Pipeline Examples
https://github.com/thomast1906/thomasthorntoncloud-examples/tree/master/Azure-AKS-Deploy-Azure-DevOps

https://github.com/thomast1906/thomasthorntoncloud-examples/tree/master/Azure-DevOps-Pipelines-Using-Templates

# Working with Azure DevOps Pipelines using Command line
https://mohitgoyal.co/2019/07/16/working-with-azure-devops-pipelines-using-command-line/


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

az aks get-credentials --resource-group aks-rg --name aks-cluster   


az aks get-credentials --resource-group aks-rg --name myAKSCluster

az ad sp create-for-rbac --name myServicePrincipalName --role owner --scopes /subscriptions/b798c28b-e334-4ecf-b338-ec314ced3616/resourceGroups/aks-rg


# Bash Script

jobs:
  - job: bash_echo
    steps:
      - task: Bash@3
        displayName: 'Echo Test'
        inputs:
          targetType: inline
          script: |
            Echo "${{ parameters.bash_input }}"
# Azure CLI

jobs:
  - job: azcli_resourcegroup_create
    steps:
          - task: AzureCLI@2
            displayName: 'Deploy Resource Group'
            inputs:
              azureSubscription: 'tamopstf'
              scriptType: bash
              scriptLocation: inlineScript
              addSpnToEnvironment: true
              inlineScript: |
                #!/bin/bash
                az group create -l uksouth -n ${{ parameters.resource_group }}

