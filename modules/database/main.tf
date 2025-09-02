resource "aws_db_subnet_group" "db_subnets" {
  name       = "db-subnet-group"
subnet_ids = var.private_subnet_ids  # now its a list
  tags = {
    Name = "db-subnet-group"
  }
}

resource "aws_db_instance" "database" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  db_name              = "portfolio_db"
  username             = "admin"
  password             = "admin1234"
  skip_final_snapshot  = true
  db_subnet_group_name = aws_db_subnet_group.db_subnets.name

  tags = {
    Name = "portfolio-db"
  }
}

