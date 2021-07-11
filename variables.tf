variable "region" {
  description = "Define what region the instance will be deployed"
  default     = "us-east-1"
}

variable "availability_zones" {
  type        = list(string)
  description = "Define list of availability zone to use"
  default     = ["us-east-1a", "us-east-1b","us-east-1c"]
}

variable "name" {
  description = "Application Name"
  default     = "server01"
}

variable "env" {
  description = "Environment of the application"
  default     = "prod"
}

variable "instance_type" {
  description = "AWS Instance type defines the hardware configuration of the machine"
  default     = "t2.micro"
}

variable "repo" {
  description = "Repository of the application"
  default     = "https://github.com/caiodelgadonew/terraform-101"
}