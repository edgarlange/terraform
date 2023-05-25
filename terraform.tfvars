virgina_cidr = "10.200.0.0/16"

# public_subnet  = "10.200.0.0/23"
# private_subnet = "10.200.2.0/23"

subnets = ["10.200.0.0/23", "10.200.2.0/23"]

tags = {
  "env"         = "dev"
  "owner"       = "lange"
  "cloud"       = "aws"
  "IAC"         = "Terraform"
  "IAC_Version" = "v1.4.6"
  "project"     = "thor"
  region        = "virginia"
}

sg_ingress_cidr = "190.140.80.94/32"

ec2specs = {
  "ami"           = "ami-0889a44b331db0194"
  "instance_type" = "t2.micro"
}

enable_monitoreo = 0

ingress_port_list = [22, 80]

