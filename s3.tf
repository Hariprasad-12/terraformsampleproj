resource "aws_s3_bucket" "terraformbucketsample" {
  bucket = "my-tf-massiveprince-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
