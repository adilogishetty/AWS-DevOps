resource "aws_instance" "web" {
  ami             = "ami-0dbb2e91a692b24d0"
  subnet_id       = "${aws_subnet.public_subnet.id}"
  security_groups = ["${aws_security_group.sgweb.id}"]
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.public-key.key_name}"

  tags {
    Name = "public"
  }
}
