terraform {
  backend "s3" {
    bucket = "bucket-abhi1"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}

