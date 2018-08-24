resource "aws_elb" "elb" {
  name               = "terraform-elb"
  security_groups    = ["${aws_security_group.sgdb.id}"]
  availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]

  #vpc_zone_identifier = ["${aws_subnet.private_subnet1.id}", "${aws_subnet.private_subnet2.id}"]


  #subnet_id          = "${aws_subnet.private_subnet1.id}"

  #subnet_id = "${aws_subnet.private_subnet2.id}"
  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }
  health_check {
    healthy_threshold   = 3
    unhealthy_threshold = 3
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 300
  }
  tags {
    Name = "foobar-terraform-elb"
  }
}
