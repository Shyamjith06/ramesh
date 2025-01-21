variable "my_ami_list" {
    type    =   list 
    default =    ["ami-036841078a4b68e14","ami-00eb69d236edcfaf8","ami-0d7ae6a161c5c4239"]
}

output "demo_output" {
    value = element(var.my_ami_list, 0)
}

resource "aws_instance" "myec2" {
    count = length(var.my_ami_list)
    instance_type = "t2.micro"
    ami = var.my_ami_list[count.index]
    or 
    ami = element(var.my_ami_list, count.index)
}