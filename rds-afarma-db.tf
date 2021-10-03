resource "aws_db_instance" "afarma" {
  allocated_storage = 10
  engine            = "postgres"
  #engine_version       = "12.2"
  instance_class      = "db.t3.large"
  name                = var.dbname_afarma
  username            = var.dbuser
  password            = var.dbpasswd //random_password.psql_password.result
  skip_final_snapshot = true
  publicly_accessible = true


  db_subnet_group_name   = aws_db_subnet_group.persistent_data.id
  vpc_security_group_ids = ["${aws_security_group.postgres.id}", "${aws_security_group.postgres_pub.id}"]
}

