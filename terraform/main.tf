
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "amazon_linux" {
  ami           = "ami-0b09627181c8d5778"
  instance_type = "t2.micro"
  key_name      = "mumbai-key"

  tags = {
    Name = "c8.local"
  }
}

resource "aws_instance" "ubuntu_linux" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
  key_name      = "mumbai-key"

  tags = {
    Name = "u21.local"
  }
}

output "instance_ips" {
  value = {
    "c8.local"  = aws_instance.amazon_linux.public_ip
    "u21.local" = aws_instance.ubuntu_linux.public_ip
  }
}
