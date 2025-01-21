resource "aws_instance" "test-instance" {
    instance_type = var.instancetype
    ami = var.ami-id
    key_name = "terraform"
    vpc_security_group_ids = ["sg-0b943e413901ab996"]
    tags = {
        "Name": terraform.workspace
    }
}