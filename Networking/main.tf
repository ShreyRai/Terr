resource "aws_vpc" "vpc-a" {
    cidr_block = var.cidr
    tags = {
      "Name" = var.vpc_name
    }
  
}

resource "aws_subnet" "public-a" {
    vpc_id = aws_vpc.vpc-a.id
    cidr_block = var.cidr_sub
    tags = {
      "Name" = var.subnet_name
    }
  
}

resource "aws_internet_gateway" "igw-a" {
    vpc_id = aws_vpc.vpc-a.id
    tags = {
      "Name" = var.igw_name
    }
  
}

resource "aws_route_table" "routetable-a" {
    vpc_id = aws_vpc.vpc-a.id
    tags = {
      "Name" = var.route_table_name
    }
  
}

resource "aws_route" "route-a" {
  route_table_id = aws_route_table.routetable-a.id
  gateway_id = aws_internet_gateway.igw-a.id
  destination_cidr_block = "0.0.0.0/0"
}

resource "aws_route_table_association" "rta-a" {
  subnet_id = aws_subnet.public-a.id
  route_table_id = aws_route_table.routetable-a.id
  
}