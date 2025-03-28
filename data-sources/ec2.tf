resource "aws_instance" "terraform" {
  ami                    = data.aws_ami.joindevops.id
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh_terrform.id]
  tags = {
    Name = "Terraform"
  }
}

resource "aws_security_group" "allow_ssh_terrform" {
  name        = "allow_sshhh" #allow ssh is already there in my account
  description = " allow port number 22 for ssh access"

  #usually we allow everything in egress
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"] #allow from everyone
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_sshhh"
  }

}