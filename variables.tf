#========================= DEV Variables ============================
variable "cidr_dev" { type = string }
variable "cidr_sub_dev" { type = string }
variable "subnet_name_dev" { type = string }
variable "vpc_name_dev" { type = string }
variable "igw_name_dev" { type = string }
variable "route_table_name_dev" { type = string }
variable "instances_dev" { type = map(string) }
variable "ami_id_dev" { type = string }

#========================= QA Variables =================================
variable "cidr_qa" { type = string }
variable "cidr_sub_qa" { type = string }
variable "subnet_name_qa" { type = string }
variable "vpc_name_qa" { type = string }
variable "igw_name_qa" { type = string }
variable "route_table_name_qa" { type = string }
variable "instances_qa" { type = map(string) }
variable "ami_id_qa" { type = string }