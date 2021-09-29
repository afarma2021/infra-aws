/*
loja.afarmapopular.com.br
adm.afarmapopular.com.br
gestao.afarmapopular.com.br
gestao.afarma.app.br
*/

resource "aws_s3_bucket" "www_afarmapopular_com_br" {
  bucket = "www2.afarmapopular.com.br"
  acl    = "public-read"

  policy = <<EOF
{
  "Id": "bucket_policy_site",
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "bucket_policy_site_main",
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::${"www2.afarmapopular.com.br"}/*",
      "Principal": "*"
    }
  ]
}
EOF

  website {
    index_document = "index.html"
    error_document = "index.html"
  }

  tags = {
    Environment = "${var.environment}"
    Name        = "Vue s3"
  }
}
