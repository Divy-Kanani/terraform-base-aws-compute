resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = aws_key_pair.key_pair.key_name
  subnet_id     = split(",", data.aws_ssm_parameter.private_subnet_ids.value)[0]

  vpc_security_group_ids = [aws_security_group.instance_security_group.id]
  iam_instance_profile   = aws_iam_instance_profile.instance_profile.name

  tags = {
    Name = "${var.instance_identifier}-${var.instance_name}"
  }
}

resource "tls_private_key" "instance_key_pair" {
  algorithm = "RSA"
}

resource "aws_key_pair" "key_pair" {
  key_name   = "${var.instance_identifier}-${var.instance_key_name}"
  public_key = tls_private_key.instance_key_pair.public_key_openssh
}

