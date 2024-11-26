resource "aws_s3_bucket" "s3_bucket" {
  bucket = aws_new1_bucket
}

# resource "aws_s3_bucket_acl" "s3_bucket_acl" {
#   bucket = aws_s3_bucket.s3_bucket.id
#   acl    = var.aws_new1_bucket_acl]
# }

resource "aws_s3_bucket_versioning" "s3_versioning" {
  bucket = aws_new1_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
