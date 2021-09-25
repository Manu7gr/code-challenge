resource "aws_instance" "airbus" {
  ami           = "${var.ami_name}"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.test.key_name
  security_groups = [aws_security_group.security_group.name]

  tags = {
    Name = "Jenkins"
    Purpose = "Codechallenge"
  }
}
