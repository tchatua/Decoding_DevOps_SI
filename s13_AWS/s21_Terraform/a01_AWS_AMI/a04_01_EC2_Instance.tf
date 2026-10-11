# Resource: aws_instance
# This Terraform configuration defines an EC2 instance
# using the specified AMI, instance type, key pair, and security group.

resource "aws_instance" "dove_web" {
  ami               = data.aws_ami.ubuntu_jammy_22_04_arm64.id
  instance_type     = "t3.micro"
  key_name          = aws_key_pair.dove_key.key_name
  vpc_security_group_ids    = [aws_security_group.dove_sg.id]
#   availability_zone = "us-east-2a"


  tags = {
    Name    = "dove-web"
    Project = "Dove"
  }
}
