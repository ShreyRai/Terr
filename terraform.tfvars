#======================== DEV Variables =======================================
cidr_dev = "10.0.0.0/16"
cidr_sub_dev = "10.0.1.0/24"
vpc_name_dev = "vpc01"
subnet_name_dev = "publicsub01"
igw_name_dev = "igw01"
route_table_name_dev = "route_table01"
instances_dev = {
  "dev01" = "t2.micro"
  "dev02" = "t3.micro"
}
ami_id_dev = "ami-0236922087fa98b6e"

#======================== QA Variables =======================================
cidr_qa = "10.0.0.0/16"
cidr_sub_qa = "10.0.2.0/24"
vpc_name_qa = "vpc02"
subnet_name_qa = "publicsub02"
igw_name_qa = "igw02"
route_table_name_qa = "route_table02"
instances_qa = {
  "qa01" = "t2.micro"
  "qa02" = "t3.medium"
}
ami_id_qa = "ami-0236922087fa98b6e"