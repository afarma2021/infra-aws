output "afarma-secrets" {
  value     = random_password.psql_password.result
  sensitive = true
}
output "ip_wildfly" {
  value = aws_instance.server-afarma.public_ip
}

output "dns_load_balancer" {
  value = aws_alb.api_alb.dns_name
}

output "nameservers_afarmapopuplarbr" {
    value = aws_route53_zone.afarmapopularbr.name_servers 
}