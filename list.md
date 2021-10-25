# infra-aws

Arquivos básicos de projeto Terraform:

> **"LICENSE":** 

> **"main.tf":** 

> **"outputs.tf":** 

> **"variables.tf":** 


# Serviços Comuns ao Projeto

Os arquivos principais do projeto são determinados pelo prefixo "afarma-" e, todos os seus serviços únicos e principais de acordo com o serviço aws. A saber:

> **"afarma.drawio":** 

> **"afarma-alb.tf":** 

> **"afarma-aws_key_pairs.tf":** 

> **"afarma-certs.tf":** 

> **"afarma-dns.tf":** 

> **"afarma-ec2-sg.tf":** 

> **"afarma-password.tf":** 

> **"afarma-rds-sg.tf":** 

> **"afarma-rds-subnet.tf":** 

> **"afarma-vpc.tf":** 

> **"afarmapopular-certs.tf":** 


# Estrutura de Ativos do Projeto

A estrutura está definida baseada no nome do serviço aws(prefixo) e suas dependencias no sufixo. A saber:


>#### Servidor Wildfly AFARMA

> **"ec2-server-afarma-alb.tf":** 

> **"ec2-server-afarma-dns.tf":** 

> **"ec2-server-afarma.tf":** 


>#### Servidor Wildfly AFARMAPOPULAR

> **"ec2-server-afarmapopular-alb.tf":** 

> **"ec2-server-afarmapopular-dns.tf":** 

> **"ec2-server-afarmapopular.tf":** 


>#### Servidores de Banco de Dados

> **"rds-afarma-db.tf":** 

> **"rds-afarmapopular-db.tf":** 


>#### BUCKET adm_afarma_app_br

> **"s3-adm_afarma_app_br-bucket.tf":** 

> **"s3-adm_afarma_app_br-cloudfront.tf":** 

> **"s3-adm_afarma_app_br-dns.tf":** 


>#### BUCKET adm_afarmapopular_com_br

> **"s3-adm_afarmapopular_com_br-bucket.tf":** 

> **"s3-adm_afarmapopular_com_br-cloudfront.tf":** 

> **"s3-adm_afarmapopular_com_br-dns.tf":** 


>#### BUCKET gestao_afarma_app_br

> **"s3-gestao_afarma_app_br-bucket.tf":** 

> **"s3-gestao_afarma_app_br-cloudfront.tf":** 

> **"s3-gestao_afarma_app_br-dns.tf":** 


>#### BUCKET gestao_afarmapopular_com_br

> **"s3-gestao_afarmapopular_com_br-bucket.tf":** 

> **"s3-gestao_afarmapopular_com_br-cloudfront.tf":** 

> **"s3-gestao_afarmapopular_com_br-dns.tf":** 


>#### BUCKET loja_afarmapopular_com_br

> **"s3-loja_afarmapopular_com_br-bucket.tf":** 

> **"s3-loja_afarmapopular_com_br-cloudfront.tf":** 

> **"s3-loja_afarmapopular_com_br-dns.tf":** 


>#### BUCKET www_afarma_app_br

> **"s3-www_afarma_app_br-bucket.tf":** 

> **"s3-www_afarma_app_br-cloudfront.tf":** 

> **"s3-www_afarma_app_br-dns.tf:** 


>#### BUCKET www_afarmapopular_com_br

> **"s3-www_afarmapopular_com_br-bucket.tf:** 

> **"s3-www_afarmapopular_com_br-cloudfront.tf:** 

> **"s3-www_afarmapopular_com_br-dns.tf:** 