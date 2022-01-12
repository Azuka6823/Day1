resource "aws_vpc" "myvpc" {
    cidr_block = var.myvpccidr
    tags = {
      Name = "my-vpc"
    }
}
resource "aws_subnet" "mypubsubnet" {
    cidr_block = var.mysubnetcidr
    vpc_id = aws_vpc.myvpc.id
    availability_zone = var.AZ
    tags = {
      Name = "my-pubsubnet"  
    }
}

resource "aws_instance" "myinstance" {
    ami = var.ami
    subnet_id = aws_subnet.mypubsubnet.id
    instance_type = var.instancetype
    tags = {
      Name = "my-instance"
    }
}
resource "aws_route_table" "myRT" {
  vpc_id = aws_vpc.myvpc.id
}
