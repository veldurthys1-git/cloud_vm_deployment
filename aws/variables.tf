variable "aws_region" {
  default = "us-east-1"
}

variable "aws_ami" {
  description = "Amazon Machine Image ID"
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2
}

variable "instance_type" {
  default = "t2.micro"
}
