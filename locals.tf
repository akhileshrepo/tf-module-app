locals {
  name_prefix = "${var.env}-${var.component}"
  tags        = merge(var.tags, { tf-module-name = "app" }, { env = var.env })
}