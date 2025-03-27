variable "instances" {
  type        = map
  default     = {
    mysql = "t3.small"
    backend = "t2.micro"
    frontend = "t3.micro"
  }
}

variable "domain_name" {
  default = "daws82s.shop"
}

variable "zone_id" {
  default = "Z00702313P0TRPWAK2ADU"
}
