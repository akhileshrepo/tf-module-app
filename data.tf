# data "aws_ami" "ami" {
#   most_recent = true
#   name_regex  = "Centos-8-DevOps-Practice"
#   owners      = ["973714476881"]
# }

data "aws_ami" "ami" {
  most_recent = true
  name_regex  = "roboshop-ami-v1"
  owners      = ["058264419835"]
}

data "dns_a_record_set" "private_alb" {
  host = var.private_alb_name
}