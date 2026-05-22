#========================== DEV Instance============================
module "network_dev" {
    source = "./Networking"
    cidr = var.cidr_dev 
    cidr_sub = var.cidr_sub_dev 
    subnet_name = var.subnet_name_dev 
    vpc_name = var.vpc_name_dev 
    igw_name = var.igw_name_dev 
    route_table_name = var.route_table_name_dev 
}

module "security_dev" {
  source = "./Security"
  vpc_id = module.network_dev.vpc_id
}

module "dev" {
    source = "./Computing"
    for_each = var.instances_dev
    ami_id = var.ami_id_dev 
    instance_name = each.key
    instance_type = each.value
    subnet_id = module.network_dev.subnet_id
    sg_id = module.security_dev.sg_id

}

#================================ QA instance =============================
module "network_qa" {
    source = "./Networking"
    cidr = var.cidr_qa 
    cidr_sub = var.cidr_sub_qa 
    subnet_name = var.subnet_name_qa 
    vpc_name = var.vpc_name_qa 
    igw_name = var.igw_name_qa 
    route_table_name = var.route_table_name_qa 
}

module "security_qa" {
  source = "./Security"
  vpc_id = module.network_qa.vpc_id
}

module "qa" {
    source = "./Computing"
    for_each = var.instances_qa
    ami_id = var.ami_id_qa 
    instance_name = each.key
    instance_type = each.value
    subnet_id = module.network_qa.subnet_id
    sg_id = module.security_qa.sg_id

}