output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "load_balancer_dns_name" {
  description = "DNS name of the ALB"
  value       = aws_lb.web_lb.dns_name
}
