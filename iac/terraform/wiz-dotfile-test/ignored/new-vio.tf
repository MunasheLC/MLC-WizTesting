resource "aws_s3_bucket" "sukidarake_dotfile_ignored_existing_dir" {
  bucket = "sukidarake-dotfile-ignored-existing-dir"
}

resource "aws_s3_bucket_public_access_block" "ignored_leak" {
  bucket                  = aws_s3_bucket.sukidarake_dotfile_ignored_existing_dir.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}