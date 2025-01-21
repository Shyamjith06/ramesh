# Input variables
variable "size" {
  type    = map
  default = {
    "small"  = "t2.micro"
    "medium" = "t2.small"
    "large"  = "t2.medium"
  }
}

# Local variables to compute derived values
locals {
  instance_name = "${terraform.workspace}-terraform"
}

variable "ami-id" {
    type = string
    default = "ami-0c55b159cbfafe1f0"
}


