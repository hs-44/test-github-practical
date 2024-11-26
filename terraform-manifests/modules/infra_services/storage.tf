resource "nks_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

# resource "nks_s3_bucket_acl" "s3_bucket_acl" {
#   bucket = nks_s3_bucket.s3_bucket.id
#   acl    = var.bucket_acl
# }

resource "nks_s3_bucket_versioning" "s3_versioning" {
  bucket = nks_s3_bucket.s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}
