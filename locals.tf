locals {
  name_prefix = "${var.env}-${var.component}"
  tags        = merge(var.tags, { tf-module-name = "elasticache" }, { env = var.env })
}