resource "aws_subnet" "subnet1" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet1_cidr
  availability_zone = "ap-southeast-1a"
  tags = {
    Name="main_subnet1"
  }
}

resource "aws_subnet" "subnet2" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet2_cidr
  availability_zone = "ap-southeast-1b"
  tags = {
    Name="main_subnet2"
  }
}

resource "aws_route_table_association" "table_a" {
  subnet_id = aws_subnet.subnet1.id
  route_table_id = aws_route_table.vpc_rt.id
}

resource "aws_route_table_association" "table_b" {
  subnet_id = aws_subnet.subnet2.id
  route_table_id = aws_route_table.vpc_rt.id
}