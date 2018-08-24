resource "aws_autoscaling_group" "bar" {
  name                 = "packing elb"
  launch_configuration = "${aws_launch_configuration.launch.name}"
  availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
  min_size             = 1
  max_size             = 2
  enabled_metrics      = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]
  load_balancers       = ["${aws_elb.elb.id}"]

  vpc_zone_identifier = ["${aws_subnet.private_subnet1.id}", "${aws_subnet.private_subnet2.id}"]

  lifecycle {
    create_before_destroy = true
  }
}
