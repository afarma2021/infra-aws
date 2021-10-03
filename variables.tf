# Arquivo principal de variaveis terraform
variable "region" { default = "us-east-1" }
variable "az_count" { default = 2 }
variable "cidr" { default = "192.168.0.0/16" }
variable "dbname_afarma" { default = "postgres" }
variable "dbname_afarmapopular" { default = "postgres" }
variable "dbuser" { default = "postgres" }
variable "dbpasswd" { default = "afarma2021" }
variable "ec2-wildfly" { default = "ami-0138a1d8b44e67c59" }

variable "environment" { default = "prod" }
