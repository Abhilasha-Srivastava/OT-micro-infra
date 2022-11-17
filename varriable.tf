variable "sg_ports_inbound" {
  type    = list(any)
  default = [8081, 8083, 3000, 8080, 80]
}
variable "sg_ports_outbound" {
  type    = list(any)
  default = [8081, 8083, 3000, 8080, 80]
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
  type    = string
}
variable "subnet_name" {
  type    = list(any)
  default = ["public_subnet", "private_subnet1", "private_subnet2"]
}

variable "subnet_cidr" {
  type    = list(any)
  default = ["10.0.0.0/24", "10.0.4.0/26", "10.0.128.0/17"]
}


variable "ami_id" {
  default = "ami-041db4a969fe3eb68"
}

variable "inst_type" {
  default = "t2.small"
}

variable "inst_name" {
  default = "my_terraform_instance"
}

# variable "associate_public_ip_address" {
#   type    = list(any)
#   default = ["false", "true", "true", "true", "true", "true"]
# }