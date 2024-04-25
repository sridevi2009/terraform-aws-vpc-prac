data "aws_availability_zones" "azs" {
  state = "available"
}

data "aws_vpc" "default" {
  default = true
}

data "aws_route_table" "default_route_table" {
  vpc_id = data.aws_vpc.default.id
}