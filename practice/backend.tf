*/terraform {
  backend "s3" {
    bucket = "ragu-s3-demo-xyz"
    key = "ragu/terraform.tfstate"
    region = "ap-south-1"
  }
}*/