
data "aws_ssm_parameter" "private_subnet_ids" {
  name = "/vpc/private_subnets"
}

