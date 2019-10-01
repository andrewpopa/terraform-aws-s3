output "s3_bucket_id_ptfe-es" {
  description = "Bucket name"
  value       = module.ptfe-es.s3_bucket_id
}

output "s3_bucket_arn_ptfe-es" {
  description = "ARN for the bucket"
  value       = module.ptfe-es.s3_bucket_arn
}

output "s3_bucket_id_ptfe-es-snapshot" {
  description = "Bucket name"
  value       = module.ptfe-es-snapshot.s3_bucket_id
}

output "s3_bucket_arn_ptfe-es-snapshot" {
  description = "ARN for the bucket"
  value       = module.ptfe-es-snapshot.s3_bucket_arn
}