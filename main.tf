resource "aws_s3vectors_vector_bucket" "s3vectors_vector_buckets" {
  for_each = var.s3vectors_vector_buckets

  vector_bucket_name = each.value.vector_bucket_name
  force_destroy      = each.value.force_destroy
  region             = each.value.region
  tags               = each.value.tags

  dynamic "encryption_configuration" {
    for_each = each.value.encryption_configuration != null ? each.value.encryption_configuration : []
    content {
      kms_key_arn = encryption_configuration.value.kms_key_arn
      sse_type    = encryption_configuration.value.sse_type
    }
  }
}

