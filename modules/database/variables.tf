variable "vpc_id" {}

variable "rds_sg_id" {}

variable "private_subnet_ids" {
  description = "List of private subnet IDs for RDS"
  type        = list(string)
}

