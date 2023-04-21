 provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "nikki_bucket" {
  bucket = "my-tf-sample-bucket"
  acl = "private"
  versioning {
    enabled = true
  }
  
  tags = {
    Name = "sample_bucket"
    Environment = "Dev"
  }
}