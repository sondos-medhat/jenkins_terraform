# rds subnetgroup
resource "aws_db_subnet_group" "rdssubnetgroup" {
  name       = "rdssubnetgroup"
  subnet_ids = [aws_subnet.private1.id, aws_subnet.private2.id]

  tags = {
    Name = "My DB subnet group"
  }
}

# elasticache subnetgroup


resource "aws_elasticache_subnet_group" "redissubnetgroup" {
  name       = "redissubnetgroup"
  subnet_ids = [aws_subnet.private1.id, aws_subnet.private2.id]
}