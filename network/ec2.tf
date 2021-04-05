resource "aws_instance" "bastion" {
  ami = "ami-042e8287309f5df03"
  instance_type = "t2.micro"
    vpc_security_group_ids = [aws_security_group.allowssh.id]
    subnet_id = aws_subnet.public1.id
    key_name = aws_key_pair.sshpublickey1.key_name
    tags = {
      Name = "Bastion EC2"
    }

  provisioner "local-exec" {
    command = "echo the public ip is ${self.public_ip}"
  }

}


