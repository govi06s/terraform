locals {
  domain_name = "daws82s.shop"
  zone_id = "Z00702313P0TRPWAK2ADU"
  instance_type = var.environment == "prod" ? "t3.medium" : "t3.micro"
  # count.index will not work in locals
}
