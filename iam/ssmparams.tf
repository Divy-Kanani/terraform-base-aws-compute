resource "aws_ssm_parameter" "iam_role_name" {
  name  = "/vpc/${var.unique_id}-iam-role-name"
  type  = "String"
  value = aws_iam_role.instance_role.name
}

resource "aws_ssm_parameter" "iam_role_id" {
  name  = "/vpc/${var.unique_id}-iam-role-id"
  type  = "String"
  value = aws_iam_role.instance_role.id
}

resource "aws_ssm_parameter" "iam_role_arn" {
  name  = "/vpc/${var.unique_id}-iam-role-arn"
  type  = "String"
  value = aws_iam_role.instance_role.arn
}
