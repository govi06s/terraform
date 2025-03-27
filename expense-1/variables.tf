variable "instance_names" {
  type    = list(string)
  default = ["mysql", "frontend", "backend"]
}

variable "domain_name" {
  default = "daws82s.shop"
}

variable "zone_id" {
  default = "Z00702313P0TRPWAK2ADU"
}