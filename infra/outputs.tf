output "public_ip_address" {
  description = "public ip address"
  value       = aws_eip.elasticip.public_ip
}
