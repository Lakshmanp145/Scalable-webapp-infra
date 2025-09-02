variable "project" {
    
}

variable "environment" {
    
}

variable "enable_dns_hostnames" {
    default  = true
}

variable "common_tags" {

}

variable "vpc_tags" {
    default = {}
}

#mandatory to give module user
variable "cidr_block" {
    
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.public_subnet_cidrs) == 2 
        error_message = "please provide two valid public_subnet_cidrs"
    }
}

variable "public_subnets_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.private_subnet_cidrs) == 2 
        error_message = "please provide two valid public_subnet_cidrs"
    }
}

variable "private_subnets_tags" {
    default = {}
}

variable "database_subnet_cidrs" {
    type = list
    validation {
        condition = length(var.database_subnet_cidrs) == 2 
        error_message = "please provide two valid public_subnet_cidrs"
    }
}

variable "database_subnets_tags" {
    default = {}
}
 
variable "nat_gatway_tags" {
    default = {}
}

variable "public_route_table_tags" {
    default = {}
}

variable "private_route_table_tags" {
    default = {}
}

variable "database_route_table_tags" {
    default = {}
}

variable "is_peering_required" {
    default = false
}

variable "vpc_peering_tags" {
    default = {}
}