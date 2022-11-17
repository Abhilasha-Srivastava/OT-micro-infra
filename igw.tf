resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.MyVPC.id

  tags = {
    Name = "igw"
  }
}
