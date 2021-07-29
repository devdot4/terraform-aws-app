# AWS Region.
variable "aws_region" {}

# VPC Module - Team 2
variable "vpc_cidr_block" {}
variable "vpc_public_cidr_1" {}
variable "vpc_public_cidr_2" {}
variable "vpc_public_cidr_3" {}
variable "vpc_private_cidr_1" {}
variable "vpc_private_cidr_2" {}
variable "vpc_private_cidr_3" {}

# VPC Module - Team 3
variable "rds_name" {}
variable "rds_engine" {}
variable "rds_engine_version" {}
variable "rds_instance_class" {}
variable "rds_ssm_parameter_name" {}
variable "rds_route53_zone" {}

# Auto Scaling Group.
variable "aws_asg_name" {}
variable "aws_asg_desired_capacity" {}
variable "aws_asg_min_size" {}
variable "aws_asg_max_size" {}
variable "aws_asg_capacity_rebalance" {}
variable "aws_asg_on_demand_base_capacity" {}
variable "aws_asg_on_demand_percentage_above_base_capacity" {}
variable "aws_asg_spot_allocation_strategy" {}

# ASG Mixed Instance Types.
variable "aws_asg_instance_type_1" {}
variable "aws_asg_weighted_capacity_1" {}
variable "aws_asg_instance_type_2" {}
variable "aws_asg_weighted_capacity_2" {}

# Elastic Load Balancer.
variable "aws_elb_name" {}
variable "aws_elb_listener_instance_port" {}
variable "aws_elb_listener_instance_protocol" {}
variable "aws_elb_listener_lb_port" {}
variable "aws_elb_listener_lb_protocol" {}
variable "aws_elb_health_check_healthy_threshold" {}
variable "aws_elb_health_check_unhealthy_threshold" {}
variable "aws_elb_health_check_timeout" {}
variable "aws_elb_health_check_target" {}
variable "aws_elb_health_check_interval" {}
variable "aws_elb_cross_zone_load_balancing" {}
variable "aws_elb_idle_timeout" {}
variable "aws_elb_connection_draining" {}
variable "aws_elb_connection_draining_timeout" {}

# Elastic Load Balancer Attachment.
variable "aws_lb_target_group_name" {}
variable "aws_lb_target_group_port" {}
variable "aws_lb_target_group_protocol" {}

# Launch Template Configuration.
variable "aws_lt_name" {}
variable "aws_lt_instance_type" {}

# Security Group.
variable "aws_security_group_name" {}
variable "aws_security_group_description" {}
variable "aws_security_group_cidr_block" {}
variable "aws_security_group_service_ports" {}

# SSH-Keygen.
variable "aws_key_pair_name" {}
variable "aws_key_pair_path" {}

# Data Source AWS AMI.
variable "aws_ami_owners" {}
variable "aws_ami_most_recent" {}
variable "aws_ami_filter_name_1" {}
variable "aws_ami_filter_value_1" {}
variable "aws_ami_filter_name_2" {}
variable "aws_ami_filter_value_2" {}
variable "aws_ami_filter_name_3" {}
variable "aws_ami_filter_value_3" {}

# Tags.
variable "aws_tags" {}