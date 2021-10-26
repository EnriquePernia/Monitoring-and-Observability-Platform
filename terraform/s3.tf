resource "aws_s3_bucket" "snapshot" {
  bucket = "snapshot-${random_string.random.result}"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "random_string" "random" {
  length  = 12
  upper   = false
  number  = false
  lower   = true
  special = false
}