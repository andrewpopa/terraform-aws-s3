output "s3_bucket_id" {
  description = "Bucket name"
  value       = element(concat(aws_s3_bucket.tf_s3.*.id, list("")), 0)
}

output "s3_bucket_arn" {
  description = "ARN for the bucket"
  value       = element(concat(aws_s3_bucket.tf_s3.*.arn, list("")), 0)
}