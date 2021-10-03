resource "aws_route53_record" "api-afarma" {
  zone_id = aws_route53_zone.afarmaappbr.zone_id
  name    = "api"
  type    = "A"

  alias {
    name                   = aws_alb.api_afarma_alb.dns_name
    zone_id                = aws_alb.api_afarma_alb.zone_id
    evaluate_target_health = true
  }
}