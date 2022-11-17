
resource "aws_subnet" "my_aws_subnet" {
  vpc_id     = aws_vpc.MyVPC.id
  cidr_block = var.subnet_cidr[count.index]
  count      = 3

  tags = {
    Name = var.subnet_name[count.index]
  }
}
# resource "aws_subnet" "private_subnet1" {
#   vpc_id            = aws_vpc.MyVPC.id
#   cidr_block        = "10.0.18.0/23"


#    tags = {
#     Name = "private1"
#   }
# }
# resource "aws_subnet" "private_subnet2" {
#   vpc_id            = aws_vpc.MyVPC.id
#   cidr_block        = "10.0.120.0/24"


#    tags = {
#     Name = "private2"
#   }
# }

# resource "aws_subnet" "private_subnet3" {
#   vpc_id            = aws_vpc.MyVPC.id
#   cidr_block        = "10.0.122.0/23"


#    tags = {
#     Name = "private3"
#   }
# }



