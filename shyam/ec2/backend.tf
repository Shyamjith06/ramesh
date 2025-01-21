terraform {
  backend "s3" {
    bucket = "terraform-backend-shyam"
    key    = "shyam/ec2/ec2.tfstate"
    region = "eu-west-1"
  }
}