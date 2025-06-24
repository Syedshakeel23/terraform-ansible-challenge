
provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "amazon_linux" {
  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"
  key_name      = "your-key"

  tags = {
    Name = "c8.local"
  }
}

resource "aws_instance" "ubuntu_linux" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name      = "your-key"

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
