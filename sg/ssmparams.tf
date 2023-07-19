
resource "aws_ssm_parameter" "security_group_id" {
  name  = "/vpc/${var.unique_id}-security-group-id"
  type  = "String"
  value = aws_security_group.instance_security_group.id
}

resource "aws_ssm_parameter" "security_group_name" {
  name  = "/vpc/${var.unique_id}-security-group-name"
  type  = "String"
  value = aws_security_group.instance_security_group.name
}