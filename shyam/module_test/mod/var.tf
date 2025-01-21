variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "sgid" {
    type = string
}

locals {
    ami_name = "ami-036841078a4b68e14"
}