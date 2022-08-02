# lass
// 12
resource "aws_s3_bucket" "b-1" {
  bucket = "s3-website-test-hashicorp1com"
            acl = "private"
}