resource "aws_route53_record" "imagesafarmaappbrfront" {
  zone_id = aws_route53_zone.afarmaappbr.zone_id
  name    = "images"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.afarma_front.domain_name
    zone_id                = aws_cloudfront_distribution.afarma_front.hosted_zone_id
    evaluate_target_health = false
  }
}