module "sg" {
  source = "git::https://github.com/poojithkumar29/terraform-aws-sg.git"
  count = length(var.sg_name)
  project_name = var.project_name
  environment = var.environment
  sg_name = var.sg_name[count.index]
  sg_description = "creating security"
  vpc_id = local.vpc_id

}