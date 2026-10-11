# Resource: aws_security_group
# This Terraform configuration defines 
## a security group that allows 
## inbound TLS traffic (port 443) 
## and all outbound traffic for both IPv4 and IPv6.

resource "aws_security_group" "dove_sg" {
  name        = "dove-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"

  tags = {
    Name = "dove-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh_from_my_ip" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv4         = "138.89.63.208/32"
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           = 22
}

resource "aws_vpc_security_group_ingress_rule" "allow_http_from_internet" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv6" {
  security_group_id = aws_security_group.dove_sg.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}
