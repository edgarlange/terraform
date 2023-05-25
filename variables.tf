variable "virgina_cidr" {
  description = "CIDR Virginia"
  type        = string
}

# variable "public_subnet" {
#   description = "CIDR public subnet"
#   type        = string
# }

# variable "private_subnet" {
#   description = "CIDR private subnet"
#   type        = string
# }

variable "subnets" {
  description = "Lista de subnets"
  type        = list(string)
}

variable "tags" {
  description = "Tags del proyecto"
  type        = map(string)
}

variable "ec2specs" {
  description = "EC2 Features"
  type        = map(string)
}

variable "sg_ingress_cidr" {
  description = "CIDR for ingress traffic"
  type        = string
}

variable "enable_monitoreo" {
  description = "Habilita el despliegue de un servidor de monitoreo"
  type        = number

}

variable "ingress_port_list" {
  description = "Lista de puertos"
  type        = list(number)
}
