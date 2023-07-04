provider "aws" {
   region=var.region
  
}

terraform {
  backend "s3" {
    bucket = "provider007"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
