resource "aws_s3_bucket" "terraformbucketsample" {
  bucket = "my-new-terraform-bucket"
  acl    = "private"

  tags = {
    Name        = "My bucket"
  }
}
