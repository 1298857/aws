provider "aws" {}

resource "aws_instance" "instance1" {
  ami = data.aws_ami.ami.id
  instance_type = var.instance_type
  key_name = var.key_name
  tags = {
    "Name" = var.Name
  }
}
