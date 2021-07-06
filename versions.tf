terraform {
  required_version = ">= 0.15"

  required_providers {
    snowplow = {
      source  = "snowplow-devops/snowplow"
      version = ">= 0.4"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3"
    }
  }
}
