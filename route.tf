resource "aws_route_table" "myroute" {
  vpc_id = aws_vpc.MyVPC.id

  tags = {
    Name = "my_route"
  }
}
