output "ubuntu_jammy_22_04_arm64_ami_id" {
  value       = data.aws_ami.ubuntu_jammy_22_04_arm64.id
  description = "The AMI ID for the Ubuntu Jammy 22.04 ARM64 server"
}

output "ubuntu_jammy_22_04_arm64_ami_name" {
  value       = data.aws_ami.ubuntu_jammy_22_04_arm64.name
  description = "The AMI name for the Ubuntu Jammy 22.04 ARM64 server"
}

output "ubuntu_jammy_22_04_arm64_ami_platform_details" {
  value       = data.aws_ami.ubuntu_jammy_22_04_arm64.platform_details
  description = "The platform details for the Ubuntu Jammy 22.04 ARM64 server"
}

output "ubuntu_jammy_22_04_arm64_ami_region" {
  value       = data.aws_ami.ubuntu_jammy_22_04_arm64.region
  description = "The region for the Ubuntu Jammy 22.04 ARM64 server"
}