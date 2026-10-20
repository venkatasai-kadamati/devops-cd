# public route table -> public subnet assoc
# routes 0.0.0.0 -> IGW
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
}
 
resource "aws_route" "public_internet_access" {
  route_table_id = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.main.id
}

resource "aws_route_table_association" "public_1a" {
  route_table_id = aws_route_table.public.id
  subnet_id = aws_subnet.public_1a.id
}

# private route table -> private subnet assoc
# routes 0.0.0.0 -> NAT
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.main.id
}

resource "aws_route" "private_nat" {
  route_table_id = aws_route_table.private.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = aws_nat_gateway.main.id
}

resource "aws_route_table_association" "private_1a" {
  route_table_id = aws_route_table.private.id
  subnet_id = aws_subnet.private-1b.id
}