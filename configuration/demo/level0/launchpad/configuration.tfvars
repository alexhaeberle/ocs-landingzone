landingzone = {
  backend_type = "azurerm"
  level        = "level0"
  key          = "launchpad"
}

enable = {
  bastion_hosts    = false
  virtual_machines = false
}

# Default region. When not set to a resource it will use that value
default_region = "region1"

regions = {
  region1 = "eastus"
  region2 = "westus"
}

# core tags to be applied accross this landing zone
tags = {
  owner          = "OCS"
  deploymentType = "Terraform"
  costCenter     = "0"
  BusinessUnit   = "SHARED"
  DR             = "NON-DR-ENABLED"
}

# naming convention settings
# for more settings on naming convention, please refer to the provider documentation: https://github.com/aztfmod/terraform-provider-azurecaf
#
# passthrough means the default CAF naming convention is not applied and you are responsible
# of the unicity of the names you are giving. the CAF provider will clear out
# passthrough = false
# adds random chars at the end of the names produced by the provider
# random_length = 3

# all resources deployed will inherit tags from the parent resource group
inherit_tags = true

launchpad_key_names = {
  azuread_app            = "ocs_launchpad_level0"
  keyvault_client_secret = "aadapp-ocs-launchpad-level0"
  tfstates = [
    "level0",
    "level1",
    "level2",
    "level3",
    "level4"
  ]
}

resource_groups = {
  level0 = {
    name = "ocs-launchpad-level0"
    tags = {
      level = "level0"
    }
  }
  level1 = {
    name = "ocs-launchpad-level1"
    tags = {
      level = "level1"
    }
  }
  level2 = {
    name = "ocs-launchpad-level2"
    tags = {
      level = "level2"
    }
  }
  level3 = {
    name = "ocs-launchpad-level3"
    tags = {
      level = "level3"
    }
  }
  level4 = {
    name = "ocs-launchpad-level4"
    tags = {
      level = "level4"
    }
  }
  security = {
    name = "ocs-launchpad-security"
  }
  ops = {
    name = "ocs-operations"
  }
  siem = {
    name = "siem-logs"
  }
}