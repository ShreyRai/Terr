output "vpc_id" {
  value = aws_vpc.vpc-a.id
}

output "subnet_id" {
  value = aws_subnet.public-a.id
}

output "igw_id" {
  value = aws_internet_gateway.igw-a.id
}