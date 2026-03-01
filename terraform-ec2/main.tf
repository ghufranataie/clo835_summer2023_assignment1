resource "aws_instance" "EC2-SRVR" {
  ami                    = "ami-0f3caa1cf4417e51b" # Amazon Linux 2 us-east-1
  instance_type          = "t2.medium"
  subnet_id              = data.aws_subnets.default.ids[0]  # First default subnet
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = "vockey"

  user_data = <<-EOF
    #!/bin/bash
    sudo dnf update -y
    sudo dnf install git -y
    sudo dnf install docker -y
    sudo systemctl start docker
    sudo systemctl enable docker
    sudo usermod -aG docker ec2-user
  EOF

  tags = {
    Name = "Web-Server"
  }
}
