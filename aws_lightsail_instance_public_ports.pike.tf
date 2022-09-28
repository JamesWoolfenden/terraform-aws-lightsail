resource "aws_lightsail_instance_public_ports" "pike" {
  instance_name = aws_lightsail_instance.pike.name

  port_info {
    protocol  = "tcp"
    from_port = 80
    to_port   = 80
  }
  dynamic "port_info" {
    for_each = var.settings
    content {
      protocol  = port_info.value.protocol
      from_port = port_info.value.from_port
      to_port   = port_info.value.to_port
    }
  }
}

variable "settings" {
  type = list(object({
    protocol  = string
    from_port = number
    to_port   = number
  }))
  default = [{
    from_port = 80
    protocol  = "tcp"
    to_port   = 80
  }]
}
