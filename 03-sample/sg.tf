resource "aws_security_group" "allow_ssh" {
  name                = "allow_ssh"
  description         = "allow_ssh"

  ingress {
    from_port         = 22
    protocol          = "tcp"
    to_port           = 22
    cidr_blocks       = ["0.0.0.0/0"]
  }

  egress {
    from_port         = 0
    protocol          = "-1"
    to_port           = 0
    cidr_blocks       = ["0.0.0.0/0"]
  }
  tags = {
    Name              = "allow_ssh"
  }
}