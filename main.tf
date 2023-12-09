terraform {
  required_version = "~> 1.6"

  required_providers {
    aws = {
      version = "~> 5"
      source  = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
