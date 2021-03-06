resource "aws_s3_bucket" "tf_s3" {
  bucket        = var.bucket
  acl           = var.acl
  tags          = var.tags
  force_destroy = var.force_destroy
  versioning {
    enabled = var.versioning
  }
}