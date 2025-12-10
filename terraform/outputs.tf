output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_1_id" {
  description = "Public Subnet 1 ID"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "Public Subnet 2 ID"
  value       = aws_subnet.public_2.id
}

output "web_server_1_public_ip" {
  description = "Web Server 1 Public IP"
  value       = aws_instance.web_server_1.public_ip
}

output "web_server_2_public_ip" {
  description = "Web Server 2 Public IP"
  value       = aws_instance.web_server_2.public_ip
}

output "web_server_1_private_ip" {
  description = "Web Server 1 Private IP"
  value       = aws_instance.web_server_1.private_ip
}

output "web_server_2_private_ip" {
  description = "Web Server 2 Private IP"
  value       = aws_instance.web_server_2.private_ip
}