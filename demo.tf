resource "aws_subnet" "public-subnet-1" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = var.cidr_block-public-subnet-1
    availability_zone = "us-east-1a"
    map_public_ip_on_launch = true
    tags = {
        "Name" = "${var.vpc_name}-public-subnet-1"
    }
  
}
resource "aws_subnet" "public-subnet-2" {
    vpc_id = "${aws_vpc.dev.id}"
    cidr_block = var.cidr_block-public-subnet-2
    availability_zone = "us-east-1b"
    map_public_ip_on_launch = true
    tags = {
      "Name" = "${var.vpc_name}-public-subnet-2"
    }
}
