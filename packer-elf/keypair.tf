#key pair for instance 
resource "aws_key_pair" "public-key" {
  key_name   = "instance"
  public_key = "5Jcovvvvvvvvlocal"
}
