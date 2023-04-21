variable "aws_region" {
  type = string
  default = "ap-south-1"
  description = "This variable is used to specify in which region the instance is created"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "This variable is used to specify the instance type/size"
}

variable "ssh_keyname" {
  type = string
  default = "keypair2"
  description = "What is the SSH keyname to use?"
}

variable "security_groups" {
  type        = list(string)
  default     = ["launch-wizard-1"]
  description = "A list of security group IDs to apply to the EC2 instance"  
}

variable "ssh_private_key_path" {
  default     = "C:/Users/welcome/Downloads/keypair2.pem"
  description = "The path to the private SSH key for connecting to the EC2 instance"
}
