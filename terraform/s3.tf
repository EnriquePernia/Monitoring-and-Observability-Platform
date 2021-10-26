resource "aws_s3_bucket" "snapshot" {
  bucket = "snapshot-iypbshnfqgsg"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

# resource "aws_ebs_volume" "example" {
#   availability_zone = "eu-west-1a"
#   size              = 40

#   tags = {
#     Name = "Volume"
#   }
# }
# resource "random_string" "random" {
#   length  = 12
#   upper   = false
#   number  = false
#   lower   = true
#   special = false
# }