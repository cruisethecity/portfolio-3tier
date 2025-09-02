# Security group for EC2
resource "aws_security_group" "ec2_sg" {
  vpc_id      = var.vpc_id
  name        = "ec2-sg"
  description = "Allow SSH access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Launch EC2
resource "aws_instance" "backend" {
  ami           = "ami-096566f39a31a283e" # Ubuntu AMI in us-east-2
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]  # ✅ FIXED

  tags = {
    Name = "backend-instance"
  }
}

