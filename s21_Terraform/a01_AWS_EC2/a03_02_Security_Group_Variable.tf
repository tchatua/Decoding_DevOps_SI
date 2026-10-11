variable "dove_sg_name" {
  type        = string
  default     = "dove-sg"
  description = "The name of the security group for the Dove application"
}

variable "my_ip_address" {
  type        = string
  default     = "138.89.63.208/32"
  description = "My IP address for SSH access"
}

variable "ssh_port" {
  type        = number
  default     = 22
  description = "The port for SSH access"
}

variable "http_port" {
  type        = number
  default     = 80
  description = "The port for HTTP access"
}

variable "from_internet_ipv4" {
  type        = string
  default     = "0.0.0.0/0"
  description = "The CIDR block for allowing access from the internet"
}

variable "from_internet_ipv6" {
  type        = string
  default     = "::/0"
  description = "The CIDR block for allowing access from the internet over IPv6"
}

