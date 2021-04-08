resource "aws_db_instance" "rds1" {
  identifier ="rds1"
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro"
  name              = "dbwithrds"
  #username = "${var.AWS_DB_USERNAME}"
  #password = "${var.AWS_DB_PASSWORD}"
  #storage_type = "gp2"
  username = "sondos"
  password = "sondos1234"

  vpc_security_group_ids = [aws_security_group.rdssecuritygroup.id]
  db_subnet_group_name   = aws_db_subnet_group.rdssubnetgroup.id

  skip_final_snapshot  = true
}


