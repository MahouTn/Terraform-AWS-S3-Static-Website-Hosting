
resource "aws_s3_bucket" "lab-0" {
  bucket = "terraform-lab-0"

  tags = {
    Name        = "lab-0-bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_website_configuration" "lab-0" {
  bucket = aws_s3_bucket.lab-0.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  
}

resource "aws_s3_bucket_public_access_block" "lab-0" {
  bucket = aws_s3_bucket.lab-0.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


resource "aws_s3_object" "object" {
  bucket = "terraform-lab-0"
  key    = "index.html"
  source = "index.html"
  content_type = "text/html"

}

resource "aws_s3_object" "error" {
  bucket = "terraform-lab-0"
  key    = "error.html"
  source = "error.html"
  content_type = "text/html"
}

resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.lab-0.id
  policy = data.aws_iam_policy_document.public_read_access.json
}

data "aws_iam_policy_document" "public_read_access" {
  statement {
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }

    actions = [
      "s3:GetObject",
    ]

    resources = [
      aws_s3_bucket.lab-0.arn,
      "${aws_s3_bucket.lab-0.arn}/*",
    ]
  }
}
