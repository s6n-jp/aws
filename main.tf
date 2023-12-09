terraform {
  required_version = "~> 1.6"

  required_providers {
    aws = {
      version = "~> 5"
      source  = "hashicorp/aws"
    }
  }

  cloud {
    organization = "s6n-jp"

    workspaces {
      name = "aws"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
