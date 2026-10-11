# AWS Key Pair for Terraform
resource "aws_key_pair" "dove_key" {
  key_name   = "dove_key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAICFN2lAjF5tB7WAHdhINyOEXkBauf5mppOUr6HQZ/p8y tchattua@gmail.com"
  #   public_key = file("~/.ssh/id_rsa.pub")
}

