variable "env" {
    default =  "sandbox"
}

variable "region" {
    default = "us-east-1"
}

variable "owner_tag" {
    default = "Xerris DevOps Team"
}

variable "create_vpc" {
  default = true
}

variable "vpc_id" {
  default = ""
}

variable "private_subnets_ids" {
  default = []
  type = list
}

variable "public_subnets_ids" {
  default = []
  type = list
}

variable "vpc_name" {
}

variable "vpc_cidr" {
}

variable "private_subnets"{
    type = list
}

variable "public_subnets"{
    type = list
}

variable "enable_natgateway" {
  default = true
}

variable "enable_vpngateway" {
  default = false
}

variable "external_nat_ip_ids" {
  default = [""]
  type = list
}
variable "count_eip_nat" {
  default = 1
}
