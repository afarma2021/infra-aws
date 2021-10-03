resource "aws_route53_record" "gestaoafarmaappbrfront" {
  zone_id = aws_route53_zone.afarmaappbr.zone_id
  name    = "gestao"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.gestao_afarma_front.domain_name
    zone_id                = aws_cloudfront_distribution.gestao_afarma_front.hosted_zone_id
    evaluate_target_health = false
  }
}