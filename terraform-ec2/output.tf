output "ec2_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.my_ec2.public_ip
}

output "app_ecr_repository_url" {
  description = "ECR repository URL for app"
  value       = aws_ecr_repository.app_repo.repository_url
}

output "app_ecr_repository_name" {
  description = "ECR repository name for app"
  value       = aws_ecr_repository.app_repo.name
}

output "mysql_ecr_repository_url" {
  description = "ECR repository URL for MySQL"
  value       = aws_ecr_repository.mysql_repo.repository_url
}

output "mysql_ecr_repository_name" {
  description = "ECR repository name for MySQL"
  value       = aws_ecr_repository.mysql_repo.name
}
