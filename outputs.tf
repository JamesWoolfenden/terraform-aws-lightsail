output "instance" {
  value = aws_lightsail_instance.pike
}

output "public_ports" {
  value = aws_lightsail_instance_public_ports.pike
}
