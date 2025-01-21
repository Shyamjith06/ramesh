# Define the EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"  # AMI ID for the EC2 instance (use a valid AMI ID for your region)
  instance_type = "t2.micro" 
  
    tags = {
    Name = "Ramesh"
    ENV  = "dev"
  } 

    provisioner "local-exec" {
    command = "echo 'Instance IP: ${self.public_ip}' >> instance_ips.txt"
  }
}