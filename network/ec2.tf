resource "aws_instance" "bastion" {
  ami                    = var.awsinstance
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allowssh.id]
  subnet_id              = aws_subnet.public1.id
  key_name               = aws_key_pair.sshpublickey1.key_name
  tags = {
    Name = "Bastion EC2"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> inventory"
  }

}

#resource "aws_instance" "application" {
 #    ami = var.awsinstance
  #  instance_type = "t2.micro"
   # vpc_security_group_ids = [aws_security_group.allowsshand3000.id]
   # subnet_id = aws_subnet.private1.id
   # key_name = aws_key_pair.sshpublickey2.key_name
   # tags = {
    #    Name = "Application EC2"
    #}
#}
