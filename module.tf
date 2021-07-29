module "vpc" {
  source        = "dalerboboev/vpc1/aws"
  version       = "1.0.13"
  cidr_block    = var.vpc_cidr_block
  public_cidr1  = var.vpc_public_cidr_1
  public_cidr2  = var.vpc_public_cidr_2
  public_cidr3  = var.vpc_public_cidr_3
  private_cidr1 = var.vpc_private_cidr_1
  private_cidr2 = var.vpc_private_cidr_2
  private_cidr3 = var.vpc_private_cidr_3
  region        = var.aws_region
  tags          = var.aws_tags
}
module "rds" {
  source         = "maxat2416/RDS-project/aws"
  version        = "1.0.7"
  name           = var.rds_name
  engine         = var.rds_engine
  engine_version = var.rds_engine_version
  instance_class = var.rds_instance_class
  # aws_ssm_parameter_name   = var.rds_ssm_parameter_name
  aws_route53_zone         = var.rds_route53_zone
  aws_db_subnet_group_name = var.rds_subnet_group_name
  vpc_id                   = module.vpc.vpc
  subnet_ids               = module.vpc.private_subnets
  aws_db_subnet_group      = module.vpc.private_subnets
  vpc_security_group_id    = aws_security_group.aws_sg.id
  allowed_security_groups  = [aws_security_group.aws_sg.id]
  allowed_cidr_blocks      = [var.vpc_cidr_block]
  region                   = var.aws_region
  master_username          = var.rds_master_username
  master_password          = var.rds_master_password
  publicly_accessible      = var.rds_publicly_accessible
}