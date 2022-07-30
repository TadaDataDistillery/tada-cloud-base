module "tada_agdata_sales_report" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "${local.tada_agdata_sales_name}-report"
  description   = "AgData Weekly Sales Report"
  handler       = "index.lambda_handler"
  runtime       = "python3.9"

  source_path = local.tada_agdata_sales_release

  tags = {
    Owner       = var.owner_tag
    Environment = var.env
    Terraform   = true
  }
}


#module "lambda_function" {
#  source = "terraform-aws-modules/lambda/aws"
#
#  function_name = "lambda-with-layer"
#  description   = "My awesome lambda function"
#  handler       = "index.lambda_handler"
#  runtime       = "python3.8"
#  publish       = true
#
#  source_path = "../src/lambda-function1"
#
#  store_on_s3 = true
#  s3_bucket   = "my-bucket-id-with-lambda-builds"
#
#  layers = [
#    module.lambda_layer_s3.lambda_layer_arn,
#  ]
#
#  environment_variables = {
#    Serverless = "Terraform"
#  }
#
#  tags = {
#    Module = "lambda-with-layer"
#  }
#}
#
#module "lambda_layer_s3" {
#  source = "terraform-aws-modules/lambda/aws"
#
#  create_layer = true
#
#  layer_name          = "lambda-layer-s3"
#  description         = "My amazing lambda layer (deployed from S3)"
#  compatible_runtimes = ["python3.8"]
#
#  source_path = "../src/lambda-layer"
#
#  store_on_s3 = true
#  s3_bucket   = "my-bucket-id-with-lambda-builds"
#}
