  resource "aws_s3_bucket" "state-file-bucket" {
  bucket = "${var.environment}-state-file"

  versioning {
    enabled = true
  }

  tags = {
    environment = "${var.environment}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_dynamodb_table" "state-file-locking-table" {
  name           = "${var.environment}-state-file-locking"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    environment = "${var.environment}"
  }
}
