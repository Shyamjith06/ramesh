# Create a Security Group that allows SSH (port 22) access from a specific IP
resource "aws_security_group" "sg" {
  name_prefix = "sg_"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Restrict SSH access to your IP address
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH_Security_Group"
  }
}

# Create EC2 Instance
resource "aws_instance" "Ram_test" {
  ami           = "ami-0c55b159cbfafe1f0"  # Update with correct Ubuntu AMI ID for your region
  instance_type = "t2.micro"
  key_name      = "terraform"  # Ensure this key pair exists in AWS

  security_groups = [aws_security_group.sg.name]
  associate_public_ip_address = true  # Ensure the instance gets a public IP

  connection {
    type        = "ssh"
    user        = "ubuntu"  # Use 'ubuntu' as the default user for Ubuntu AMIs
    private_key = file("/path/to/your/terraform.pem")  # Update with the correct private key path
    host        = self.public_ip  # Use the instance's public IP for SSH
  }

  # Remote-Exec Provisioner to install nginx (and avoid using private keys insecurely)
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",  # Update the system
      "sudo apt-get install -y nginx",  # Install nginx
      "sudo systemctl start nginx",  # Start nginx service
      "sudo systemctl enable nginx"  # Enable nginx to start on boot
    ]
  }

  tags = {
    Name = "Ram_Test_Instance"
  }
}

