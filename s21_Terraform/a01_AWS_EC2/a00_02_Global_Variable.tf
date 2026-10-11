# AWS Global Variables for Terraform

## Region
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-east-2"
}

## Availability Zone
variable "aws_availability_zone_1" {
  description = "The AWS availability zone to deploy resources in"
  type        = string
  default     = "us-east-2c"
}
