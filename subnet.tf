resource "aws_route_table" "routetable" {
    vpc_id = "${aws_vpc.dev.id}"
    route {
        cidr_block = "0.0.0.0/0"
      gateway_id = "${aws_internet_gateway.igw.id}"
    }
    tags = {
        "Name" = "${var.vpc_name}-rt"
    }
  
}
resource "aws_route_table_association" "public-subnet-1" {
    subnet_id = "${aws_subnet.public-subnet-1.id}"
    route_table_id = "${aws_route_table.routetable.id}"
  
}
resource "aws_route_table_association" "public-subnet-2" { 
    subnet_id = "${aws_subnet.public-subnet-2.id}"
    route_table_id = "${aws_route_table.routetable.id}"
  
}

