# ランダムな数値を作成する（S3バケット一意対策）
resource "random_string" "bucket_suffix" {
  length  = 10
  special = false
  upper   = false
}

# S3バケットの作成
resource "aws_s3_bucket" "gha_practice_bucket" {
  bucket = "${local.bucket_name}-${random_string.bucket_suffix.result}"

  tags = {
    Owner = local.owner
  }
}