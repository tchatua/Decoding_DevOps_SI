variable "amiID" {
  description = "The AMI ID for the EC2 instance"
  type        = map(string)
  default = {
    us-east-2 = "ami-0ea1cddefe0c4aed5" # Ubuntu Server 24.04
    us-east-1 = "ami-0f8a61b66d1accaee" # Ubuntu Server 24.04
  }
}