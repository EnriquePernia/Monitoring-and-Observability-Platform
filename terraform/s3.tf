resource "aws_s3_bucket" "snapshot" {
  bucket = var.aws_bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}