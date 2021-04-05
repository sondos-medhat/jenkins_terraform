resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnetpublic1cidr
  map_public_ip_on_launch = true
  availability_zone = var.az1

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnetpublic2cidr
  map_public_ip_on_launch = true
  availability_zone =var.az2


  tags = {
    Name = "public2"
  }
}

resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnetprivate1cidr
    availability_zone = var.az1


  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.subnetprivate2cidr
    availability_zone = var.az2


  tags = {
    Name = "private2"
  }
}