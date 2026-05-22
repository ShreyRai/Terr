#========================== DEV Instance============================
module "network_dev" {
    source = "./Networking"
    cidr = "10.0.0.0/16"
    cidr_sub = "10.0.1.0/24"
    subnet_name = "publicsub01"
    vpc_name = "vpc01"
    igw_name = "igw01"
    route_table_name = "route_table01"
}

module "security_dev" {
  source = "./Security"
  vpc_id = module.network_dev.vpc_id
}

module "dev" {
    source = "./Computing"
    ami_id = "ami-0236922087fa98b6e"
    instance_name = "dev-app"
    instance_type = "t2.micro"
    subnet_id = module.network_dev.subnet_id
    sg_id = module.security_dev.sg_id

}

#================================ QA instance =============================
module "network_qa" {
    source = "./Networking"
    cidr = "10.0.0.0/16"
    cidr_sub = "10.0.2.0/24"
    subnet_name = "publicsub02"
    vpc_name = "vpc02"
    igw_name = "igw02"
    route_table_name = "route_table02"
}

module "security_qa" {
  source = "./Security"
  vpc_id = module.network_qa.vpc_id
}

module "qa" {
    source = "./Computing"
    ami_id = "ami-0236922087fa98b6e"
    instance_name = "qa-app"
    instance_type = "t2.micro"
    subnet_id = module.network_qa.subnet_id
    sg_id = module.security_qa.sg_id

}