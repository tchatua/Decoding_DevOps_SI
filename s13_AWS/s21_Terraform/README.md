# Terraform

## AMI ID

```hcl
data "aws_ami" "ubuntu_jammy_22_04_arm64" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-arm64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"]
}
```

```tf
output "ubuntu_jammy_22_04_arm64_ami_id" {
  value       = data.aws_ami.ubuntu_jammy_22_04_arm64.id
  description = "The AMI ID for the Ubuntu Jammy 22.04 ARM64 server"
}
```

```sh
terraform fmt
terraform validate
terraform init
terraform validate
terraform plan
terraform apply
```

## Create SSH Key

```sh
$ ssh-keygen -t ed25519 -C "tchattua@gmail.com"
Generating public/private ed25519 key pair.
Enter file in which to save the key (/c/Users/tchat/.ssh/id_ed25519): dovekey
Enter passphrase for "dovekey" (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in dovekey
Your public key has been saved in dovekey.pub
The key fingerprint is:
SHA256:xM2CDjoj2D8pP6+7+WDrBbRcrGsmMYcLJChfipAOhZE tchattua@gmail.com
The key's randomart image is:
+--[ED25519 256]--+
|.+.              |
|Eo   . o o       |
|B.  + + + o      |
|O+ B * . .       |
|=.@ * . S        |
| o O +           |
|  + X .          |
|   B.*           |
|   .OBo          |
+----[SHA256]-----+

$ ll
-rw-r--r-- 1 tchat 197609  411 Oct 10 19:25 dovekey
-rw-r--r-- 1 tchat 197609  100 Oct 10 19:25 dovekey.pub
```

```tf

```

```tf

```


