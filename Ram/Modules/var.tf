variable "size" {
    type = string
    default = "t2.micro"
}

locals {
   instance_name = "${terraform.workspace}-demo"
}

variable "ami" {
    type = string
    default = "ami-0c55b159cbfafe1f0"
}