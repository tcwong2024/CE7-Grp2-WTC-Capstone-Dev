terraform {
  required_version = ">= 1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      Environment        = terraform.workspace # Dynamically sets the environment based on the workspace
      Owner              = "ce7-grp-2-wtc"
      Cohort             = "CE7"
      TerraformWorkspace = terraform.workspace # Adds a reference tag for easier identification
      Terraform          = true
      # Owner              = "ce7-grp-2"
    }
  }
}
