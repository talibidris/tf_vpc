# The combination of these resources will create an aws vpc with access to the internet, internal routing and a single public subnet

# defines vpc resource
resource "aws_vpc" "tfb" {
  cidr_block           = "${var.cidr}"
  enable_dns_hostnames = "${var.enable_dns_hostnames}"
  enable_dns_support   = "${var.enable_dns_support}"
  tags {
      Name = "${var.name}"
  }
}

# defines internet gateway resource
resource "aws_internet_gateway" "tfb" {
  vpc_id = "${aws_vpc.tfb.id}"
  tags {
      Name = "${var.name}-igw"
  }
}

# defines internet access route resource
resource "aws_route" "internet_access" {
  route_table_id         = "${aws_vpc.tfb.main_route_table_id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.tfb.id}"
}

# defines public subnet resource
resource "aws_subnet" "public" {
  vpc_id     = "${aws_vpc.tfb.id}"
  cidr_block = "${var.public_subnet}"
  tags {
      Name = "${var.name}-public"
  }
}
