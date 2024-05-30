variable "project_name" {
  type = string
  }

variable "environment" {
  type = string
}
variable "sg_name" {
  type = string
  default = ""
}
variable "sg_description" {
  type = string
  }

  variable "vpc_id" {
    type = string
  }
  variable "common_tags" {
    type = map
  }
variable "outbound_rules" {
  default = [{
    from_port = 0
    to_port   = 0
    protocol  = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }]
}
variable "ingress_rules" {
  type = list
  default = []
}