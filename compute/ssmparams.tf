resource "aws_ssm_parameter" "key_pair_private_key" {
  name        = "/run/${var.unique_id}/compute/${var.instance_identifier}/instance/key-pairs/private_key"
  description = "Private key for the example key pair"
  type        = "SecureString"
  value       = tls_private_key.instance_key_pair.private_key_pem
}

resource "aws_ssm_parameter" "key_pair_public_key" {
  name        = "/run/${var.unique_id}/compute/${var.instance_identifier}/instance/key-pairs/public_key"
  description = "Public key for the example key pair"
  type        = "String"
  value       = tls_private_key.instance_key_pair.public_key_openssh
}

resource "aws_ssm_parameter" "instance_id" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/instance-id"
  type  = "String"
  value = aws_instance.instance.id
}

resource "aws_ssm_parameter" "instance_arn" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/instance-arn"
  type  = "String"
  value = aws_instance.instance.arn
}

resource "aws_ssm_parameter" "instance_name" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/instance-name"
  type  = "String"
  value = "${var.instance_identifier}-${var.instance_name}"
}

resource "aws_ssm_parameter" "iam_role_name" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/iam-role-name"
  type  = "String"
  value = aws_iam_role.instance_role.name
}

resource "aws_ssm_parameter" "iam_role_id" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/iam-role-id"
  type  = "String"
  value = aws_iam_role.instance_role.id
}

resource "aws_ssm_parameter" "iam_role_arn" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/iam-role-arn"
  type  = "String"
  value = aws_iam_role.instance_role.arn
}

resource "aws_ssm_parameter" "security_group_id" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/security-group-id"
  type  = "String"
  value = aws_security_group.instance_security_group.id
}

resource "aws_ssm_parameter" "security_group_name" {
  name  = "/run/${var.unique_id}/compute/${var.instance_identifier}/security-group-name"
  type  = "String"
  value = aws_security_group.instance_security_group.name
}