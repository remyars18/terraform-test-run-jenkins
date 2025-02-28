terraform {
  backend "s3" {
    bucket = "terra-state-new-infra-arun-123"
    key    = "terraform/terraform.tfstate"
    region = "us-east-1"
  }
}