resource "aws_lightsail_key_pair" "pike" {
  name_prefix = var.instance.key_pair_name
}

resource "local_file" "private_key" {
  content  = aws_lightsail_key_pair.pike.private_key
  filename = "id_rsa"
}

resource "local_file" "public_key" {
  content  = aws_lightsail_key_pair.pike.public_key
  filename = "id_rsa.pub"
}
