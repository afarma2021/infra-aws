resource "aws_cloudfront_distribution" "loja_afarmapopular_front" {
  origin {
    domain_name = replace(aws_s3_bucket.new_loja_afarmapopular_com_br.website_endpoint, "/^https?://([^/]*).*/", "$1")
    origin_id   = "s3"

    custom_origin_config {
      http_port              = 80
      https_port             = 443
      origin_protocol_policy = "http-only"
      origin_ssl_protocols   = ["TLSv1.2"]
    }
  }
  enabled         = true
  is_ipv6_enabled = true
  comment         = "Front Cloudfront"

  aliases = ["new-loja.afarmapopular.com.br"]

  default_cache_behavior {
    allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "s3"
    forwarded_values {
      headers      = ["*"]
      query_string = false
      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "redirect-to-https"
  }

  tags = {
    Environment = "${var.environment}"
    Name        = "Front End loja.afarmapopular.com.br Cloudfront"
  }

  viewer_certificate {
    cloudfront_default_certificate = false
    acm_certificate_arn            = aws_acm_certificate.afarmapopularbrcert.arn
    ssl_support_method             = "sni-only"
  }
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
  depends_on = [aws_s3_bucket.new_loja_afarmapopular_com_br]
}
