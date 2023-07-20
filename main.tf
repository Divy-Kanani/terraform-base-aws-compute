module "ec2_web_compute" {
  source = "./compute"
  instance_identifier = "web"
}

module "ec2_app_compute" {
  source = "./compute"
  instance_identifier = "app"
}


