
output "website_endpoint" {
  value = "http://${aws_s3_bucket.lab-0.website_endpoint}"
}