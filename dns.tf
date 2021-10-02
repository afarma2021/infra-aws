resource "aws_route53_zone" "afarmapopularbr" {
  name = "afarmapopular.com.br"
}


resource "aws_route53_record" "api" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = "api"
  type    = "A"

  alias {
    name                   = aws_alb.api_alb.dns_name
    zone_id                = aws_alb.api_alb.zone_id
    evaluate_target_health = true
  }
}


resource "aws_route53_record" "wwwafarmapopularcombrfront" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = "www"
  type    = "A"

  alias {
    name = "${aws_cloudfront_distribution.afarma_front.domain_name}"
    zone_id = "${aws_cloudfront_distribution.afarma_front.hosted_zone_id}"
    evaluate_target_health = false
  }
}

resource "aws_route53_record" "afarmapopularcombrfront" {
  zone_id = aws_route53_zone.afarmapopularbr.zone_id
  name    = ""
  type    = "A"

  alias {
    name = "${aws_cloudfront_distribution.afarma_front.domain_name}"
    zone_id = "${aws_cloudfront_distribution.afarma_front.hosted_zone_id}"
    evaluate_target_health = false
  }
}
