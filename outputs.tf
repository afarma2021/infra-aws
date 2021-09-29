output "afarma-secrets" {
     value = random_password.psql_password.result 
     sensitive = true
}
output "ip_wildfly" {
    value = aws_instance.server-afarma.public_ip
}