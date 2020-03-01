
resource "aws_db_subnet_group""mysql-subnet"{
    name="mysql-subnet"
    description="RDS subnet group"
    subnet_ids = [aws_subnet.data_subnet.id, aws_subnet.private_az1.id, aws_subnet.private_az2.id]
}

resource "aws_db_instance" "rds" {
  allocated_storage    = 100
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  identifier = "mysql"
  username             = "root"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = aws_db_subnet_group.mysql-subnet.name
  //vpc_id = aws_vpc.main.id
}