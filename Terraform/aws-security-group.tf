module "ssh_security_group" {
  source  = "terraform-aws-modules/security-group/aws//modules/ssh"
  version = "~> 5.0"
  name = "tf-test"
  vpc_id = module.vpc.vpc_id
}