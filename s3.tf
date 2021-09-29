resource "aws_s3_bucket" "terraformbucketsample" {
  bucket = "my-new-terraform-bucket1"
  acl    = "private"
  tags = {
    Name        = "My bucket"
  }
}
