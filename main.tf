module "network" {
    source = "./Networking"
    cidr = "10.0.0.0/16"
    cidr_sub = "10.0.1.0/24"
    subnet_name = "publicsub01"
    vpc_name = "vpc01"
    igw_name = "igw01"
    route_table_name = "route_table01"
}

module "security" {
  source = "./Security"
  vpc_id = module.network.vpc_id
}
module "dev" {
    source = "./Computing"
    ami_id = "ami-0236922087fa98b6e"
    instance_name = "ec201"
    instance_type = "t2.micro"
    subnet_id = module.network.subnet_id
    sg_id = module.security.sg_id

}