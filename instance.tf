resource "aws_instance" "my_ec2_instance" {
  ami                         = var.ami_id
  instance_type               = var.inst_type
  count                       = 6cd 
  subnet_id                   = aws_subnet.my_aws_subnet[count.index]
 
  associate_public_ip_address = true
  #count                       = 6
  tags = {
    Name = "instance[count.index]"
  }

}