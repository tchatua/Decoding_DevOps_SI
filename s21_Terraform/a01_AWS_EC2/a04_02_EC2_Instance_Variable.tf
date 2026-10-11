variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
  default     = "t3.micro"
}

variable "dove_web_name" {
  description = "The name of the Dove web EC2 instance"
  type        = string
  default     = "dove-web"
}

variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "Dove"
}

variable "ssh_user" {
  type        = string
  default     = "ubuntu"
  description = "The SSH user for connecting to the EC2 instance"
}

