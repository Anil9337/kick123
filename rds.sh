
resource "aws_instance" "instance1" {
  ami                         = "ami-066f98455b59ca1ee"
  instance_type               = "t2.micro"
  count                       = 1
  key_name                    = "kkkkk"
  vpc_security_group_ids     = ["sg-0904496989ecd2a17"]
  subnet_id                   = "subnet-09a39101a33901123"
  associate_public_ip_address = true
  user_data                   = "${file("data.sh")}"

  tags = {
    Name = "king"
  }
}
