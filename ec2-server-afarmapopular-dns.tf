resource "aws_route53_record" "api-afarmapopular" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = "api"
  type    = "A"

  alias {
    name                   = aws_alb.api_afarmapopular_alb.dns_name
    zone_id                = aws_alb.api_afarmapopular_alb.zone_id
    evaluate_target_health = true
  }
}