variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

variable "common_tags" {
  type = map(any)
  default = {
    Project     = "expense"
    Environment = "dev"
    Terraform   = "true"
  }
}

variable "zone_id" {
  default = "Z00702313P0TRPWAK2ADU"
}

variable "domain_name" {
  default = "daws82s.shop"
}