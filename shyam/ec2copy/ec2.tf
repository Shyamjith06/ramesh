resource "aws_instance" "my-instance" {
    instance_type = terraform.workspace = "dev"? t2.micro":"t2.medium"
    ami = "ami-036841078a4b68e14"
    key_name = "terraform"

}
