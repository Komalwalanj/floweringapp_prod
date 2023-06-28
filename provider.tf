provider "aws" {
  region     = var.region


  assume_role{
    role_arn="arn:aws:iam::769453588195:role/floweringapp-prod-deployment-role"
  }
}

locals {
  tags = {
    Name             = var.resource_name
    BusinessFunction = var.business_function
    OwnerEmail       = var.owner_email
    ContactEmail     = var.contact_email
    Platform         = var.platform
    CostCenter       = var.cost_center
    Application      = var.application
    Purpose          = var.purpose
    Environment      = var.environment
    CreatedByEmail   = var.created_by_email
  }

}


terraform {
  backend "s3" {
    bucket         = "terraform-backend-prod-769453588195-statefile-bucket"
    key            = "terraform-backend-prod-769453588195-statefile-bucket/flowering-application/production/terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-backend-prod-statefile-dynamodb" 
    encrypt        = true
    role_arn       = "arn:aws:iam::769453588195:role/floweringapp-prod-deployment-role"
    kms_key_id     = "arn:aws:kms:eu-central-1:769453588195:key/826446f4-35c2-4275-9f42-a044ffcdad4c"

  }
}
