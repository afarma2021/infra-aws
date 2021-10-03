# infra-aws

TODOS os arquivos com a extensão "(old)" estão sendo ignorados pelo Terraform

> **"main": 

> **"outputs": 

> **"variables": 


# Serviços Comuns ao Projeto

Os arquivos principais do projeto são determinados pelo prefixo "afarma-" e, todos os seus serviços únicos e principais de acordo com o serviço aws. A saber:

> **"afarma-alb" :

> **"afarma-aws_key_pairs" :

> **"afarma-certs" :

> **"afarma-dns" :

> **"afarma-vpc" :

# Estrutura de Ativos do Projeto

A estrutura está definida baseada no nome do serviço aws(prefixo) e suas dependencias no sufixo. A saber:

> **"ec2--alb" :**

> **"ec2--alb" :**

> **"ec2--alb" :**

> **"ec2--alb" :**

> **"ec2--alb" :**


> **"rds--db" :

> **"rds--sg" :


> **"s3--afarma-bucket":

> **"s3--afarma-cloudfront":

> **"s3--afarma-dns":


> **"s3--afarma-bucket"(old) :

> **"s3--afarma-cloudfront"(old) :

> **"s3--afarma-dns"(old) :


> **"s3--afarma_app_br-bucket"(old) :

> **"s3--afarma_app_br-cloudfront"(old) :

> **"s3--afarma_app_br-dns"(old) :


> **"s3-www-afarma_app_br-bucket"(old) :

> **"s3-www-afarma_app_br-cloudfront"(old) :

> **"s3-www-afarma_app_br-dns"(old) :


> **"s3-adm-afarmapopular_com_br-bucket" :

> **"s3-adm-afarmapopular_com_br-cloudfront" :

> **"s3-adm-afarmapopular_com_br-dns" :


> **"s3-gestao-afarmapopular_com_br-bucket" :

> **"s3-gestao-afarmapopular_com_br-cloudfront" :

> **"s3-gestao-afarmapopular_com_br-dns" :


> **"s3-loja-afarmapopular_com_br-bucket" :

> **"s3-loja-afarmapopular_com_br-cloudfront" :

> **"s3-loja-afarmapopular_com_br-dns" :


> **"s3-www_afarmapopular_com_br-bucket" :

> **"s3-www_afarmapopular_com_br-cloudfront" :

> **"s3-www_afarmapopular_com_br-dns" :