resource "aws_security_group" "allowssh" {
  name        = "allow ssh"
  description = "Allow ssh from 0.0.0.0/0"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "allow ssh port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}

resource "aws_security_group" "allowsshand3000" {
  name        = "allow ssh with 3000"
  description = "allow ssh and port 3000 from vpc cidr only"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "allow ssh port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }
    ingress {
    description = "TLS from VPC"
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = [aws_vpc.main.cidr_block]
  }
  tags = {
    Name = "allow_ssh_and_3000"
  }
}
