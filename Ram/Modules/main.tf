
data "aws_ami" "ami-id" {
    filter {
      name =   "tag:Service"
      values = ["Xbrl"]
    }
} 

resource "aws_instance" "demo123" {
    ami = data.aws_ami.ami-id.id
    instance_type = var.size
    tags = {
        Name = local.instance_name
    }
}

output "ec2publicip" {
    value = aws_instance.demo123.public_ip
}



