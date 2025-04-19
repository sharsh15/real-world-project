provider "aws" {
  region = "us-east-1"
}

/*resource "aws_instance" "jenkins-server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = "Devopskeypair"

  vpc_security_group_ids = [aws_security_group.ec2-aws-instance-sg.id]

  root_block_device {
    volume_size           = 25
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "jenkins-server"
  }
}*/

resource "aws_instance" "check-balance-server" {
  ami           = "ami-084568db4383264d4"
  instance_type = "t2.micro"
  key_name      = "Devopskeypair"

  vpc_security_group_ids = [aws_security_group.ec2-aws-instance-sg.id]

  root_block_device {
    volume_size           = 15
    volume_type           = "gp3"
    delete_on_termination = true
  }

  tags = {
    Name = "check-balance-server"
  }
}

resource "aws_security_group" "ec2-aws-instance-sg" {
  name        = "allow-ssh-http-https"
  description = "allowing ssh, http, https traffics"
  vpc_id      = "vpc-0fc535f7a26fe4c8d"

  ingress {
    description = "SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "https"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Jenkins port 8080"
    from_port   = "8080"
    to_port     = "8080"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "check-balance-server port - 10001"
    from_port = 10001
    to_port = 10001
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "test-SG"
  }
}

output "instance_public_ip" {
      description = "Public IP address of the EC2 instance"
      value = aws_instance.check-balance-server.public_ip 
    }