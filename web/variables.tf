variable "region" {
  description = "AWS region"
}

variable "key_name" {
  description = "AWS pair to use for resources"
}

variable "ami" {
  type        = "map"
  description = "map of AMIs"
  default     = {}
}

variable "instance_type" {
  description = "the instance type"
  default     = "t2.micro"
}
