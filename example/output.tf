output "s3_bucket_id_ptfe-es" {
  description = "Bucket name"
  value       = module.ptfe-es.s3_bucket_id
}

output "s3_bucket_region_ptfe-es" {
  description = "ARN for the bucket"
  value       = module.ptfe-es.s3_bucket_region
}

output "s3_bucket_arn_ptfe-es" {
  description = "ARN for the bucket"
  value       = module.ptfe-es.s3_bucket_arn
}