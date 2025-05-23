resource "aws_instance" "web" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_1.id
  associate_public_ip_address = true
  key_name                    = var.key_name

  # On référence le SG Web (web_sg)
  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name = "WebInstance"
  }

  user_data = file("setup.sh")
}
