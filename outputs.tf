output "public_ip" {
  value       = aws_instance.example_server.public_ip
  description = "Public IP address"
}


