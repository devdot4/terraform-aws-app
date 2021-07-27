resource "aws_autoscaling_group" "asg-team4" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = var.aws_autoscaling_group_desired_capacity
  max_size           = var.aws_autoscaling_group_max_size
  min_size           = var.aws_autoscaling_group_min_size
  name               = var.aws_autoscaling_group_name
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.lt-team4.id
      }
      override {
        instance_type     = var.aws_autoscaling_group_instance_type_1
        weighted_capacity = var.aws_autoscaling_group_weighted_capacity_1
      }
      override {
        instance_type     = var.aws_autoscaling_group_instance_type_2
        weighted_capacity = var.aws_autoscaling_group_weighted_capacity_2
      }
    }
  }
}