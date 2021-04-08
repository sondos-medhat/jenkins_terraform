module "network" {
  source             = "./network"
  routecidr          = var.routecidr
  subnetpublic1cidr  = var.subnetpublic1cidr
  subnetpublic2cidr  = var.subnetpublic2cidr
  subnetprivate1cidr = var.subnetprivate1cidr
  subnetprivate2cidr = var.subnetprivate2cidr
  awsinstance        = var.awsinstance
  az1                = var.az1
  az2                = var.az2
  vpccidr            = var.vpccidr

}