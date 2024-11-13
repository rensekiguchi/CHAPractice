terraform {
  required_version = "1.4.5"
  required_providers {
    aws = "= 4.63.0"
  }

  backend "local" {
    path = "terraform.tfstate"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}