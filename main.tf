terraform {
  required_providers {
    conjur = {
      version = "0.4.0"
      source  = "cyberark.com/edu/conjur"
    }
  }
}

provider "conjur" {}

data "conjur_secret" "secret1" {
  name = var.secrets-map[var.environment]["secret1"]
}

output "instance_ips" {
  value = data.conjur_secret.secret1
}
