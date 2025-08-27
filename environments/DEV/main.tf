module "rg-dev" {
  source   = "../../Module/RG"
  rg_azure = var.rg_azure

}


module "st-dev" {
  depends_on      = [module.rg-dev]
  source          = "../../Module/storage"
  storage_details = var.st_azure
}

module "vnet-dev" {
  depends_on = [module.rg-dev]
  source     = "../../Module/virtual_network"
  v_net      = var.vents

}

module "subnets-dev" {
  depends_on = [module.vnet-dev]
  source     = "../../Module/subnet"
  subnet-var = var.snets_var
}