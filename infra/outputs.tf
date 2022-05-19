output "public_ip_address" {
  description = "public ip address"
  value       = aws_instance.ec2_instance.public_ip
}

output "eip" {
    value = aws_eip.elastic_ip.public_ip
}