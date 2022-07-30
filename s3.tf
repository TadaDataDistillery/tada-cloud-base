module "tada_releases_s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = local.tada_releases_s3
  acl    = "private"

  versioning = {
    enabled = true
  }
  
  tags = {
    Owner       = var.owner_tag
    Environment = var.env
    Terraform   = true
  }
}

module "tada_agdata_sales_app_s3" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = local.tada_agdata_sales_s3
  acl    = "private"

  versioning = {
    enabled = true
  }
  
  tags = {
    Owner       = var.owner_tag
    Environment = var.env
    Terraform   = true
  }
}
