 resource "aws_instance" "server1" {
    ami           = "ami-8ee056f3"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private_az1.id

    tags = {
        Name = "Instance #1"
    }
}

 resource "aws_instance" "server2" {
    ami           = "ami-8ee056f3"
    instance_type = "t2.micro"
    subnet_id = aws_subnet.private_az2.id

    tags = {
        Name = "Instance #2"
    }
}