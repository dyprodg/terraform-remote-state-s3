terraform {
  backend "s3" {
    bucket         = "techstarter-dennis-terraform-state"
    key            = "state/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}

