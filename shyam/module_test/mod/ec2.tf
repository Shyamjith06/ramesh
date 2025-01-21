resource "aws_instance" "demo" {
    instance_type = var.instance_type
    ami = local.ami_name
    key_name = "terraform"
    vpc_security_group_ids = [var.sgid]
    tags = {
        "Name" : "module-test"
    }
}


ouput "instanceip" {
    value = resource.aws_instance.demo.public_ip
}