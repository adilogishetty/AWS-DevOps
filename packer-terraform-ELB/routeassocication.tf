# Associate subnet public_subnet_eu_west_1a to public route table
resource "aws_route_table_association" "private_subnet_assoc" {
  subnet_id      = "${aws_subnet.private_subnet1.id}"
  route_table_id = "${aws_route_table.public_route_table.id}"
}

# Associate subnet private_1_subnet to private route table
resource "aws_route_table_association" "private_assoc" {
  subnet_id      = "${aws_subnet.private_subnet2.id}"
  route_table_id = "${aws_route_table.private_route_table.id}"
}
