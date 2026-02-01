resource "aws_ecr_repository" "app_repo" {
  name                 = "app"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "CLO835-Assignment1-ECR-app"
  }
}

resource "aws_ecr_repository" "mysql_repo" {
  name                 = "db"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    Name = "CLO835-Assignment1-ECR-mysql"
  }
}