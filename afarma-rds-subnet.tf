# Configure rds subnet
resource "aws_db_subnet_group" "persistent_data" {
  name        = "persistent_data"
  description = "Persistent Data"
  /*subnet_ids  = aws_subnet.private.*.id*/
  subnet_ids = aws_subnet.public.*.id
}