resource "aws_s3_bucket" "bucket_create" {
  bucket = "nikhitha1212"

  tags = {
    Name        = "My_bucket"
    Environment = "Dev"
  }
}