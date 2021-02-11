variable "environment" {
  default = "dev"
  type = string
  description = "Please choose between dev, test, prod"
  validation {
    condition     = var.environment == "dev" || var.environment == "test" ||var.environment == "prod"
    error_message = "The only following values are allowed: dev, test and prod."
  }
}

variable "secrets-map" {
  type = map(map(string))
  default = {
    prod = {
      secret1 = "secrets/prod/pwd"
    },
    test = {
      secret1 = "secrets/test/pwd"
    },
    dev = {
      secret1 = "secrets/dev/pwd"
    }
  }
}
