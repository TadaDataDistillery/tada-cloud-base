data "aws_caller_identity" "current" {}

locals{
  depends_on = [module.vpc]
  vpc_id = var.create_vpc ? module.vpc.vpc_id : var.vpc_id
  subnet_ids = var.create_vpc ? module.vpc.private_subnets : var.private_subnets_ids
  public_subnet_ids = var.create_vpc ? module.vpc.public_subnets : var.public_subnets_ids

  tada_releases_s3 = "tada-releases-${var.env}"
  tada_agdata_sales_name = "tada-agdata-sales"
  tada_agdata_sales_release = "../tada-releases/${local.tada_agdata_sales_name}"
  tada_agdata_sales_s3 = "${local.tada_agdata_sales_name}-app-${var.env}"
  tada_agdata_sales_input_path = "/input"
  tada_agdata_sales_output_path = "/output"
  
}
