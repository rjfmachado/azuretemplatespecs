# Template Specs

![Deploy ACR Template Spec](https://github.com/rjfmachado/azuretemplatespecs/workflows/Deploy%20ACR%20Template%20Spec/badge.svg)  
![Deploy Virtual Network Template Spec](https://github.com/rjfmachado/azuretemplatespecs/workflows/Deploy%20Virtual%20Network%20Template%20Spec/badge.svg)  
![Deploy AKS Template Spec](https://github.com/rjfmachado/azuretemplatespecs/workflows/Deploy%20AKS%20Template%20Spec/badge.svg)  

A collection of template specs for anything Azure.

## Setup

1. Create a secret in Github with the output of the following command for each Azure environment.

``` bash
az ad sp create-for-rbac \
  -n templateSpecs \
  --role contributor \
  --scopes /subscriptions/$(az account show --query id -o tsv)/resourceGroups/templateSpecs \
  --sdk-auth \
  -o jsonc
```

1. Create a resource group to target the deployment.

``` bash
az group create --name templateSpecs --location westeurope
```
