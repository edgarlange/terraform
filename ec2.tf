variable "instancias" {
  description = "Nombre de las instancias"
  type        = list(string)
  default     = ["apache"]

}

resource "aws_instance" "public_instance" {
  for_each               = toset(var.instancias)
  ami                    = var.ec2specs.ami
  instance_type          = var.ec2specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")

  tags = {
    "Name" = "${local.prefix}-${each.value}"

  }
}

resource "aws_instance" "monitor_instance" {
  count                  = var.enable_monitoreo == 1 ? 1 : 0
  ami                    = var.ec2specs.ami
  instance_type          = var.ec2specs.instance_type
  subnet_id              = aws_subnet.public_subnet.id
  key_name               = data.aws_key_pair.key.key_name
  vpc_security_group_ids = [aws_security_group.sg_public_instance.id]
  user_data              = file("scripts/userdata.sh")

  tags = {
    "Name" = "${local.prefix}-Monitoreo"

  }
}
