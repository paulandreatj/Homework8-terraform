resource "aws_db_subnet_group" "group5-subnet" {
  name = "group5-subnet"
  subnet_ids = ["subnet-04e972f3a706c00e8","subnet-0ee2351fb4338f1c7"]
}