terraform {
  required_version = ">= 1.0.0"

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
