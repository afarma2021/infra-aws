
resource "aws_instance" "server-afarma" {
  ami           = var.ec2-wildfly 
  instance_type = "t2.large"
  #subnet_id   = aws_subnet.private[0].id
  subnet_id   = aws_subnet.public[0].id
  vpc_security_group_ids = ["${aws_security_group.wildfly.id}"]
  depends_on = [aws_key_pair.deployer-aws]
  key_name = "${aws_key_pair.deployer-aws.id}"
}

