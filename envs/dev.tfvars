env = "dev"
region = "us-east-1"
vpc_name = "tada_dev"
vpc_cidr = "10.24.0.0/16"
private_subnets = ["10.24.32.0/21","10.24.40.0/21"]
public_subnets = ["10.24.48.0/21","10.24.56.0/21"]
enable_natgateway = true
enable_vpngateway = false
count_eip_nat = 1
owner_tag = "Xerris DevOps Team"