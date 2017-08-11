provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "fabrik" {
  ami                    = "ami-d9ab02b6"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-b19693fb"
  vpc_security_group_ids = ["sg-8e7c0ae5"]

  tags {
    Name = "Fabrik"
  }
}
