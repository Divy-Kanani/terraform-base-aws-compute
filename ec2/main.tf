resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  #key_name      = var.instance_key_name
  subnet_id     = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]

  vpc_security_group_ids = [var.security_group_id]
  iam_instance_profile   = var.iam_profile_name

  tags = {
    Name = var.instance_name
  }
}