resource "aws_vpc" "main" {
  tags={
    Name="main_vpc"
  }
  cidr_block = var.vpc_cidr
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name="main_internet_gateway"
  }
}

resource "aws_route_table" "vpc_rt" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name="main_route_table"
  }
}