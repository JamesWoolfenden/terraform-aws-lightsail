module "lightsail" {
  source = "../../"
  instance = {
    name              = "pike"
    availability_zone = "eu-west-2b"
    blueprint_id      = "amazon_linux"
    bundle_id         = "nano_2_0"
    key_pair_name     = "test"
    user_data         = ""
  }
  tags = {
    pike = "permissions"
  }
}
