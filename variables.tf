variable "s3vectors_vector_buckets" {
  description = <<EOT
Map of s3vectors_vector_buckets, attributes below
Required:
    - vector_bucket_name
Optional:
    - force_destroy
    - region
    - tags
    - encryption_configuration (block):
        - kms_key_arn (optional)
        - sse_type (optional)
EOT

  type = map(object({
    vector_bucket_name = string
    force_destroy      = optional(bool)
    region             = optional(string)
    tags               = optional(map(string))
    encryption_configuration = optional(list(object({
      kms_key_arn = optional(string)
      sse_type    = optional(string)
    })))
  }))
}

