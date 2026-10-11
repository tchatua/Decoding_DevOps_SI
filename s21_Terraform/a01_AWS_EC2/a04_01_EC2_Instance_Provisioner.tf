# Resource: aws_instance
# This Terraform configuration defines an EC2 instance
# using the specified AMI, instance type, key pair, and security group.

resource "aws_instance" "dove_web" {
  #ami               = data.aws_ami.ubuntu_jammy_22_04_arm64.id
  ami                    = var.amiID[var.aws_region]
  instance_type          = var.instance_type
  key_name               = aws_key_pair.dove_key.key_name
  vpc_security_group_ids = [aws_security_group.dove_sg.id]
  availability_zone      = var.aws_availability_zone_1 # cat a00_02_Global_Variable.tf

  connection {
    type = "ssh"
    user = var.ssh_user
    host = self.public_ip
    port = var.ssh_port
    # private_key = file(var.private_key_path)
    private_key = file("dovekey")
    timeout     = "1m"
  }

  provisioner "file" {
    source      = "sh01_apache2.sh"
    destination = "/tmp/sh01_apache2.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "chmod +x /tmp/sh01_apache2.sh",
      "sudo /tmp/sh01_apache2.sh",
      "rm -f /tmp/sh01_apache2.sh",
      "echo 'Apache2 installation and bootstrap complete'",
    ]
  }

  tags = {
    Name    = var.dove_web_name
    Project = var.project_name
  }
}
