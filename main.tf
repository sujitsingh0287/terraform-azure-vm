module "new_rg" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "new_SA" {
  source     = "./modules/storage_account"
  depends_on = [module.new_rg]
  Dev_STG    = var.Dev_STG
  rg_name    = var.rg_name
  location   = var.location
}





