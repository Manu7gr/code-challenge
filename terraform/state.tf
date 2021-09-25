terraform {
  backend "s3" {
    bucket         = "devops-codechallenge-terraform-state"
    key            = "codechallenge/terraform.tfstate"
    region         = "us-east-1"
  }
}
