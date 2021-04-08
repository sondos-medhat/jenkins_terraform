resource "tls_private_key" "sshkey1" {
  algorithm = "RSA"
}

resource "aws_key_pair" "sshpublickey1" {
  key_name   = "deployer-key1"
  public_key = tls_private_key.sshkey1.public_key_openssh
}

resource "local_file" "sshprivatekey1" {
  content  = tls_private_key.sshkey1.private_key_pem
  filename = "private_key1.pem"
}


resource "tls_private_key" "sshkey2" {
  algorithm = "RSA"
}

resource "aws_key_pair" "sshpublickey2" {
  key_name   = "deployer-key2"
  public_key = tls_private_key.sshkey2.public_key_openssh
}

resource "local_file" "sshprivatekey2" {
  content  = tls_private_key.sshkey2.private_key_pem
  filename = "private_key2.pem"
}