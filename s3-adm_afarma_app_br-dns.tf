resource "aws_route53_record" "admafarmaappbrfront" {
  zone_id = aws_route53_zone.afarmaappbr.zone_id
  name    = "adm"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.adm_afarmaapp_front.domain_name
    zone_id                = aws_cloudfront_distribution.adm_afarmaapp_front.hosted_zone_id
    evaluate_target_health = false
  }
}