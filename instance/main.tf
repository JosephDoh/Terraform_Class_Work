module "instance_project" {
  source        = "../modules/ec2/"
  ami_id        = local.ami
  REGION        = local.region
  instance_type = local.instance_type
  tags          = local.tags
}


output "instanceIP" {
  value = module.instance_project.instanceIP
}
