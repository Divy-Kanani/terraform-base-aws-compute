data "aws_ssm_parameter" "vpc_id" {
  name = "/vpc/vpc_id"
}

data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/vpc/private_subnets"
}

