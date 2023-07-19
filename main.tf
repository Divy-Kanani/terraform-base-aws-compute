module "iam_role" {
  source = "./iam"
}

module "security_group" {
  source = "./sg"
}

module "ec2_instance" {
  source        = "./ec2"
  iam_role_name = module.iam_role.iam_role_name
  security_group_id = module.security_group.security_group_id
}