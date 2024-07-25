module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "tf-test"

  instance_type          = "t4g.micro"
  key_name               = module.key_pair.key_pair_name
  monitoring             = true
  vpc_security_group_ids = [module.ssh_security_group.security_group_id]
  subnet_id              = module.vpc.private_subnets[0]
	}

#This is for EC2 Instance connect on public subnets
resource "aws_ec2_instance_connect_endpoint" "tf_test_connect" {
  subnet_id = module.vpc.public_subnets[0]
  security_group_ids = module.ssh_security_group.security_group_id
}