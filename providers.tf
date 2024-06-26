terraform {
  required_providers {
    azuredevops = {
      source="microsoft/azuredevops"
      version = ">=0.1.0"
    }
  }
}

provider "azuredevops" {
  org_service_url = "${{ADODIVIJ:FDAZ_DEVOPS_ORGANIZATION}}"
  personal_access_token = "${{ADODIVIJ:FDAZ_DEVOPS_PERSONAL_ACCESS_TOKEN}}"
}
