resource "aws_route53_record" "afarmapopularcombrfront" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = ""
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.afarmapopular_front.domain_name
    zone_id                = aws_cloudfront_distribution.afarmapopular_front.hosted_zone_id
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "wwwafarmapopularcombrfront" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = "www"
  type    = "A"

  alias {
    name                   = aws_cloudfront_distribution.afarmapopular_front.domain_name
    zone_id                = aws_cloudfront_distribution.afarmapopular_front.hosted_zone_id
    evaluate_target_health = false
  }
}