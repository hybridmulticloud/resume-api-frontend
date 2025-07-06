resource "aws_s3_bucket" "frontend" {
  bucket = "hybridmulti.cloud"
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Project = "Cloud Resume Challenge"
  }
}
