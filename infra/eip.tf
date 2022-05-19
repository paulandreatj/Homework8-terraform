resource "aws_eip" "elasticip" {
  instance = aws_instance.ec2_instance.id
  vpc = true
}