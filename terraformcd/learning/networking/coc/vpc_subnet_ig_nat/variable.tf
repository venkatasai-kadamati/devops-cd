variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "project_name"{
  type = string
  default = "learnaws"
}

# vpc variables
variable "vpc_cidr"{
  type  = string
  default = "192.168.0.0/23"
}

# subnet variables
variable "public_subnet_cidr"{
  type = string
  default = "192.168.0.0/25"
}

variable "private_subnet_cidr"{
  type = string
  default = "192.168.0.128/25"
}

variable "az_1a"{
  type  = string
  default = "us-east-1a"
}

variable "az_1b"{
  type = string
  default = "us-east-1b"
}