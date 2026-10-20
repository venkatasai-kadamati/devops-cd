# public subnet in az-1a
resource "aws_subnet" "public_1a" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.az_1a
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.project_name}-public-subnet-1a"
  }
}

# private subnet in az-1b
resource "aws_subnet" "private-1b" {
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.az_1b
  map_public_ip_on_launch = false

  tags = {
    Name = "${var.project_name}-private-subnet-1b"
  }
}