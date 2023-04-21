variable "my_region" {
    type = string
    default = "ap-south-1"
    description = "This variable is used to specify region"
}

variable "cidr_vpc" {
    type = string
    default = "10.0.0.0/16"    
}

variable "cidr_public_subnet" {
    type = string
    default = "10.0.1.0/24"    
}

variable "cidr_private_subnet" {
    type = string
    default = "10.0.2.0/24"    
}

variable "instance_type" {
    type = string
    default = "t2.micro"  
}

variable "key_name" {
    type = string
    default = "keypair1"
  
}

variable "vpc_ec2_public" {
    type = bool
    default = true
}

variable "vpc_ec2_private" {
    type = bool
    default = true
}

variable "vpc_ec2_public_count" {
    type = number
    default = 1
}

variable "vpc_ec2_private_count" {
    type = number
    default = 1
}