resource "aws_launch_configuration" "launch" {
  image_id        = "ami-01369030900eaad39"
  instance_type   = "t2.micro"
  security_groups = ["${aws_security_group.sgdb.name}"]
  key_name        = "${aws_key_pair.public-key.key_name}"

  lifecycle {
    create_before_destroy = true
  }
}
