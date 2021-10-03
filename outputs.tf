/*
output "afarma-secrets" {
  value     = random_password.psql_password.result
}
output "afarmapopular-secrets" {
  value     = random_password.psql_password.result
} 
*/


output "ip_wildfly_afarma" {
  value = aws_instance.server-afarma.public_ip
}
output "ip_wildfly_afarmapopular" {
  value = aws_instance.server-afarmapopular.public_ip
}

output "dns_load_balancer_afarma" {
  value = aws_alb.api_afarma_alb.dns_name
}
output "dns_load_balancer_afarmapopular" {
  value = aws_alb.api_afarmapopular_alb.dns_name
}

output "nameservers_afarmapopuplarbr" {
  value = aws_route53_zone.afarmapopularbr.name_servers
}
output "nameservers_afarmaappbr" {
  value = aws_route53_zone.afarmaappbr.name_servers
}