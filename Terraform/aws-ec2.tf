module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "tf-test"

  instance_type          = "t2.micro"
  key_name               = "test"
  monitoring             = true
  vpc_security_group_ids = [module.web_server_sg.security_group_id]
  subnet_id              = module.vpc.private_subnets[0]
	}
