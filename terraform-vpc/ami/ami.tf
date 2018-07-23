resource "aws_ami_from_instance" "example" {
  name               = "ami2"
  source_instance_id = "i-06599326eea58cf71"
}
