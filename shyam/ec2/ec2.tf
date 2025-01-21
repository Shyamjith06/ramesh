resource "aws_instance" "my-instance" {
  instance_type          = terraform.workspace == "dev" ? "t2.nano" : "t2.nano"
  ami                    = "ami-036841078a4b68e14"
  key_name               = "terraform"
  vpc_security_group_ids = ["sg-0b943e413901ab996"]
  tags = {
    "Name" : terraform.workspace
  }
  lifecycle {
    ignore_changes = [tags] 
  }
}
