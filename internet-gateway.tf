resource "aws_internet_gateway" "zebra_gateway" {
  vpc_id = aws_vpc.zebra.id

  tags = {
    Name = "zebra-igw"
  }
}