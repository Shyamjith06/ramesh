resource "aws_instance" "my-instance" {
    instance_type    = "t2.micro"
    ami              = "ami-036841078a4b68e14"  # Replace with your desired AMI ID
    key_name         = "terraform"              # Replace with your key pair
    vpc_security_group_ids = ["sg-0b943e413901ab996"]  # Correct security group ID

provisioner "remote-exec" {
    connection {
        type        = "ssh"
        user        = "ubuntu"
        private_key = file("/home/ubuntu/ec2/ec2/shyam.pem")  # PEM file path on local machine
        host        = self.public_ip
    }

    inline = [
        "sudo apt update",
        "sudo apt install -y nginx",
        "sudo systemctl start nginx",
        "sudo systemctl enable nginx",
    ]
}
}