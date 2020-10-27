# Template Specs

A collection of template specs for anything Azure.

## Setup

az ad sp create-for-rbac \
  -n templateSpecs \
  --role contributor \
  --scopes /subscriptions/$(az account show --query id -o tsv)/resourceGroups/templateSpecs \
  --sdk-auth \
  -o jsonc

Create a secret in Github with the output of the command.
