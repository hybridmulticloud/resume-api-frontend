provider "aws" {}

data "aws_s3_bucket" "frontend" {
  bucket = "hybridmulti.cloud"
}

output "s3_bucket_arn" {
  value = data.aws_s3_bucket.frontend.arn
}

output "website_url" {
  value = "https://${data.aws_s3_bucket.frontend.bucket_domain_name}"
}

output "note" {
  value = "This workspace does not manage the bucket. Deployment is handled via GitHub Actions."
}
