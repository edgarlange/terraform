locals {
  prefix = "${var.tags.project}-${var.tags.env}-${var.tags.region}" # project-env-region-recurso
}

resource "random_string" "sufix_s3" {
  length  = 8
  special = false
  upper   = false
}

locals {
  s3-sufix = "${var.tags.project}-${var.tags.env}-${var.tags.region}-${random_string.sufix_s3.id}"
}
