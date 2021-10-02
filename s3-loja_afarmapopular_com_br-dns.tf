resource "aws_route53_record" "lojaafarmapopularcombrfront" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = "loja"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.loja_afarmapopular_front.domain_name
    zone_id                = aws_cloudfront_distribution.loja_afarmapopular_front.hosted_zone_id
    evaluate_target_health = false
  }
}