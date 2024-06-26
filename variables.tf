# This is where to create variables

#IMPUT VARIABLES

#az_num - Set the number of availability zones to use
#namespace - Set a prefix for the resource names
#vpc_cidr_block - Set the IP address block for the virtual private cloud (VPC)


variable "az_num" {
  type    = number
  default = 2
}

variable "namespace" {
  type    = string
  default = "terraform-workshop"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}
