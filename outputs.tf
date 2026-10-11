output "s3vectors_vector_buckets_creation_time" {
  description = "Map of creation_time values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.creation_time if v.creation_time != null && length(v.creation_time) > 0 }
}
output "s3vectors_vector_buckets_encryption_configuration" {
  description = "Map of encryption_configuration values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.encryption_configuration if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "s3vectors_vector_buckets_force_destroy" {
  description = "Map of force_destroy values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.force_destroy if v.force_destroy != null }
}
output "s3vectors_vector_buckets_region" {
  description = "Map of region values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.region if v.region != null && length(v.region) > 0 }
}
output "s3vectors_vector_buckets_tags" {
  description = "Map of tags values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "s3vectors_vector_buckets_tags_all" {
  description = "Map of tags_all values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "s3vectors_vector_buckets_vector_bucket_arn" {
  description = "Map of vector_bucket_arn values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.vector_bucket_arn if v.vector_bucket_arn != null && length(v.vector_bucket_arn) > 0 }
}
output "s3vectors_vector_buckets_vector_bucket_name" {
  description = "Map of vector_bucket_name values across all s3vectors_vector_buckets, keyed the same as var.s3vectors_vector_buckets"
  value       = { for k, v in aws_s3vectors_vector_bucket.s3vectors_vector_buckets : k => v.vector_bucket_name if v.vector_bucket_name != null && length(v.vector_bucket_name) > 0 }
}

