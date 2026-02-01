resource "aws_instance" "EC2-SRVR" {
  ami                    = "ami-0c02fb55956c7d316" # Amazon Linux 2 us-east-1
  instance_type          = "t2.micro"
  subnet_id              = data.aws_subnets.default.ids[0]  # First default subnet
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  key_name               = "vockey"

  user_data = <<-EOF
    #!/bin/bash
    yum update -y
    yum install -y docker
    systemctl start docker
    systemctl enable docker
    usermod -aG docker ec2-user
  EOF

  tags = {
    Name = "Web-Server"
  }
}
