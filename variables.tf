variable "aws_region" {
  type        = string
  description = "AWS region to deploy resources into"
}

variable "my_ip_cidr" {
  type        = string
  description = "Your public IP in CIDR format, e.g. 1.2.3.4/32 (for SSH access)"
}

variable "key_name" {
  type        = string
  description = "Existing EC2 key pair name in AWS (used for SSH)"
}
