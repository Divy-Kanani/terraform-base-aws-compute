resource "aws_ssm_parameter" "instance_id" {
  name  = "/vpc/${var.unique_id}-instance-id"
  type  = "String"
  value = aws_instance.instance.id
}

resource "aws_ssm_parameter" "instance_arn" {
  name  = "/vpc/${var.unique_id}-instance-arn"
  type  = "String"
  value = aws_instance.instance.arn
}

resource "aws_ssm_parameter" "instance_key_name" {
  name  = "/vpc/${var.unique_id}-instance-key-name"
  type  = "String"
  value = var.instance_key_name
}

resource "aws_ssm_parameter" "instance_name" {
  name  = "/vpc/${var.unique_id}-instance-name"
  type  = "String"
  value = var.instance_name
}
