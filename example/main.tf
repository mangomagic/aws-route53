module "route53" {
  source        = "../../aws-route53"
  domain        = var.domain
  a_records     = var.a_records
  cname_records = var.cname_records
  mx_records    = var.mx_records
  txt_records   = var.txt_records
}
