resource "aws_nat_gateway" "nat" {
  allocation_id = "${aws_eip.eip.id}"
  subnet_id     = "${aws_subnet.private_subnet1.id}"

  subnet_id  = "${aws_subnet.private_subnet2.id}"
  depends_on = ["aws_internet_gateway.igw"]
}
