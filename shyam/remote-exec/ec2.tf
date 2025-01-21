resource "aws_instance" "my-instance2" {
  instance_type          = "t2.micro"
  ami                    = "ami-036841078a4b68e14"  # Replace with your desired AMI ID
  key_name               = "terraform"             # Replace with your key pair
  vpc_security_group_ids = ["sg-0b943e413901ab996"]  # Correct security group ID

  tags = {
    Name = "remote-exec"
  }

    connection {
      type        = "ssh"
      user        = "ubuntu"  # Default SSH user for Ubuntu AMI
      private_key = file("/home/ubuntu/shyam/remote-exec/terraform.pem")  # Ensure the PEM file path is valid
      host        = self.public_ip
    }
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx",
    ]
  }
}
