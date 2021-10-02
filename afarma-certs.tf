# This creates an SSL certificate afarmaappbrcert
resource "aws_acm_certificate" "afarmaappbrcert" {
  domain_name       = "*.afarma.app.br"
  validation_method = "DNS"
  lifecycle {
    create_before_destroy = true
  }
  depends_on = [aws_route53_zone.afarmaappbr]
}

resource "aws_route53_record" "afarmaappbr_cert_validation" {
  allow_overwrite = true
  name            = tolist(aws_acm_certificate.afarmaappbrcert.domain_validation_options)[0].resource_record_name
  records         = [tolist(aws_acm_certificate.afarmaappbrcert.domain_validation_options)[0].resource_record_value]
  type            = tolist(aws_acm_certificate.afarmaappbrcert.domain_validation_options)[0].resource_record_type
  zone_id         = aws_route53_zone.afarmaappbr.id
  ttl             = 60
}

# This tells terraform to cause the route53 validation to happen
resource "aws_acm_certificate_validation" "cert" {
  certificate_arn         = aws_acm_certificate.afarmaappbrcert.arn
  validation_record_fqdns = [aws_route53_record.afarmaappbr_cert_validation.fqdn]
}