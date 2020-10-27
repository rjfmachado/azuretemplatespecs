# azuretemplatespecs
A collection of template specs for anything Azure.

# setup

az ad sp create-for-rbac \
  -n templateSpecs \
  --role contributor \
  --scopes /subscriptions/$(az account show --query id -o tsv)/resourceGroups/templateSpecs \
  --sdk-auth \
  -o jsonc
