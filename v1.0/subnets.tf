resource "aws_subnet" "public_az1" {
    vpc_id = aws_vpc.main.id
    availability_zone = "eu-west-3a"
    cidr_block = "10.0.1.0/24"

    tags = {
        Name = "Public subnet #3"
        Visibility = "Public"
    }
    timeouts {
        create = "5m"
        delete = "5m"
    }
}

resource "aws_subnet" "private_az1" {
    vpc_id = aws_vpc.main.id
    availability_zone = "eu-west-3a"
    cidr_block = "10.0.2.0/24"

    tags = {
        Name = "Private subnet #1"
        Visibility = "Private"
    }
    timeouts {
        create = "5m"
        delete = "5m"
    }
}

resource "aws_subnet" "private_az2" {
    vpc_id = aws_vpc.main.id
    availability_zone = "eu-west-3b"
    cidr_block = "10.0.3.0/24"

    tags = {
        Name = "Private subnet #2"
        Visibility = "Private"
    }
    timeouts {
        create = "5m"
        delete = "5m"
    }
}

resource "aws_subnet" "data_subnet" {
    vpc_id = aws_vpc.main.id
    availability_zone = "eu-west-3a"
    cidr_block = "10.0.4.0/24"

    tags = {
        Name = "Data subnet "
        Visibility = "Private"
    }
    timeouts {
        create = "5m"
        delete = "5m"
    }
}