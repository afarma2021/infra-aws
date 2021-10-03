resource "aws_route53_record" "afarmaappbrfront" {
  zone_id = aws_route53_zone.afarmaappbr.zone_id
  name    = ""
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.afarma_front.domain_name
    zone_id                = aws_cloudfront_distribution.afarma_front.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "wwwafarmaappbrfront" {
  zone_id = aws_route53_zone.afarmaappbr.zone_id
  name    = "www"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.afarma_front.domain_name
    zone_id                = aws_cloudfront_distribution.afarma_front.hosted_zone_id
    evaluate_target_health = false
  }
}