resource "aws_lightsail_instance" "pike" {
  name              = var.instance.name
  availability_zone = var.instance.availability_zone
  blueprint_id      = var.instance.blueprint_id
  bundle_id         = var.instance.bundle_id
  key_pair_name     = aws_lightsail_key_pair.pike.name
  user_data         = var.instance.user_data
  tags              = var.tags
}

//aws lightsail get-blueprints --region eu-west-2

variable "instance" {
  type = object({
    name              = string
    availability_zone = string
    blueprint_id      = string
    bundle_id         = string
    key_pair_name     = string
    user_data         = string
  })
}
