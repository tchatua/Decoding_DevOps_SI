# Resource: aws_security_group
# This Terraform configuration defines 
## a security group that allows 
## inbound TLS traffic (port 443) 
## and all outbound traffic for both IPv4 and IPv6.

resource "aws_security_group" "dove_sg" {
  name        = var.dove_sg_name
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = var.dove_sg_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_from_my_ip" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv4         = var.my_ip_address
  from_port         = var.ssh_port
  ip_protocol       = "tcp"
  to_port           = var.ssh_port
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_internet" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv4         = var.from_internet_ipv4
  from_port         = var.http_port
  ip_protocol       = "tcp"
  to_port           = var.http_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv4         = var.from_internet_ipv4
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv6         = var.from_internet_ipv6
  ip_protocol       = "-1" # semantically equivalent to all ports
}
