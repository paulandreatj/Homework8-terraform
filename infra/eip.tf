resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ec2_instance.id
  allocation_id = aws_eip.elasticip.id
}
resource "aws_eip" "elasticip" {
  instance = aws_instance.ec2_instance.id
  vpc = var.eip_vpc
  tags = var.eip_tags
}