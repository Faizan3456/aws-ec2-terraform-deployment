output "public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IPv4 address of the EC2 instance"
}

output "public_url" {
  value       = "http://${aws_instance.web.public_ip}"
  description = "Website URL"
}
