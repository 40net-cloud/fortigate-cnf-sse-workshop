terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  cloud {
    organization = "40net-cloud"

    workspaces {
      name = "fortigate-cnf-management-analytics"
    }
  }
}

provider "aws" {
  region     = var.REGION
  access_key = var.ACCESS_KEY
  secret_key = var.SECRET_KEY

  default_tags {
    tags = var.fortinet_tags
  }
}
