# need an mandatory elastic ip first before creating an nat and IG > NAT creation orderwise
resource "aws_eip" "eip_for_nat" {
  domain="vpc"
}
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.eip_for_nat.id
  subnet_id = aws_subnet.public_1a.id

  tags = {
    Name = "${var.project_name}-nat"
  }

  # dependency over IGW
  depends_on = [aws_internet_gateway.main]
}