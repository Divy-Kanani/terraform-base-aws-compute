resource "aws_security_group" "instance_security_group" {
  name        = "${var.instance_identifier}-${var.security_group_name}"
  description = "Skilja ${var.instance_identifier} instance security group"
  vpc_id      = data.aws_ssm_parameter.vpc_id.value

  ingress {
    from_port   = 80
    to_port     = 80
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
