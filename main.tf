module "s3_mobile_web_client_extensions_us" {
  source            = "git::ssh://git@github.com/LambdatestIncPrivate/sanrachna-module.git//s3/s3_website?ref=v2.0.12"
  product_name      = "demo"
  env               = "demo"
  force_destroy     = false
  name              = "web-client-extensions"
  acl               = "public-read"
  enable_versioning = true
  sse_algorithm     = "AES256"
  index_page        = "index.html"
  error_page        = "index.html"
  allowed_headers   = ["*"]
  allowed_origins   = ["*"]
  allowed_methods   = ["GET", "HEAD"]
  max_age_seconds   = 86400
  tags              = merge({})
}