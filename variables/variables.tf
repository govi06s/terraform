#1. command line
#2. terrform.tfvars
#3. environment variables F_VAR_Your_varianle_name
#4. default
#5. prompt
variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "This is AMI ID of devops-practice which is RHEL9"

}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "backend"
    Project     = "expense"
    Component   = "backend"
    Environment = "DEV"
    Terraform   = "true"
  }
}

variable "sg_name" {
  default = "allow_sshhh"
}

variable "sg_description" {
  default = "Allow port number 22 for SSH access"
}

variable "from_port" {
  default = "22"
  type    = number
}

variable "to_port" {
  default = "22"
  type    = number
}

variable "protocol" {
  default = "tcp"
}

variable "ingress_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}