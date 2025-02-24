terraform {
  backend "s3" {
    bucket = "testbucket"
    key = "ragu/terraform.tfstate"
    region = "ap-south-1"
  }
}