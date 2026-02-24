resource "aws_route_table" "zebra_rt" {
  vpc_id = aws_vpc.zebra.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.zebra_gateway.id
  }

  tags = {
    Name = "united-public-rt"
  }
}