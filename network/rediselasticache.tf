resource "aws_elasticache_cluster" "example" {
  cluster_id           = "redis-example"
  engine               = "redis"
  node_type            = "cache.t2.micro"
  num_cache_nodes      = 1
  parameter_group_name = "default.redis6.x"
  engine_version       = "6.x"
  port                 = 6379
  security_group_ids = [aws_security_group.redisecuritygroup.id]
  subnet_group_name =aws_elasticache_subnet_group.redissubnetgroup.id

}