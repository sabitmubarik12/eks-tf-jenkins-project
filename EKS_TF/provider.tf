# configure aws provider
provider "aws" {
  region  = var.region
}

# configure backend
terraform {
  backend "s3" {
    bucket         = "cyberspeed-terraform-state-backend"
    key            = "eks.terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "cyberspeed_terraform_state"
  }
}
