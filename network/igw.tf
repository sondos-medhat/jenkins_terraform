resource "aws_internet_gateway" "publicgateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "main"
  }
}