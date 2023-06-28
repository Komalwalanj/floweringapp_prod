module "kms" {
  source                   = "git::https://git.syngentaaws.org/terraform-modules/KMS.git/?ref=master"
  description              =  "floweringapp-prod-kms"
  alias                    = "s3_key"
  tags                     = local.tags
}
