terraform {
  backend "s3" {
    bucket = "ragu-demo-terraform-test-xyz"
    key = "ragu/terraform.tfstate"
    region = "ap-south-1"
  }
}