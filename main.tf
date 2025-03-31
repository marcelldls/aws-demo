resource "aws_security_group" "basic_security" {
  name = "basic_security"

  ingress {
    description = "SSH ingress"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.my_ip]
  }

  ingress {
    description = "HTTP ingress"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = "allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # all protocols
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "example_server" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.basic_security.id]
  user_data              = var.start_up_script

  tags {
    Name = "example_server"
  }
}
