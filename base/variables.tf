variable "access_key" {
  description = "The AWS access key"
}

variable "secret_key" {
  description = "The AWS secret key"
}

variable "region" {
  description = "The AWS region"
  default     = "ap-southeast-1"
}

variable "region_list" {
  description = "AWS availability zones"
  default     = ["ap-southeast-1", "ap-southeast-2"]
}

variable "ami" {
  default = {
    ap-southeast-1 = "ami-08589eca6dcc9b39c"
    ap-southeast-2 = "ami-0aff30363d302d23a"
  }

  description = "The AMIs to use"
}

variable "security_group_ids" {
  type        = "list"
  description = "List of security group IDs"
  default     = ["sg-d85cc5be", "sg-96050ff0", "sg-17425571"]
}
