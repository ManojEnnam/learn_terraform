data "aws_ami" "ami" {
 most_recent = true
 name_regex  = "Centos-8-DevOps-Practice"
 owners      = ["973714476881"]
}

resource "aws_instance" "Frontend" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="frontend"
  }
}
resource "aws_instance" "mongobd" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="mongodb"
 }
}

resource "aws_instance" "catalogue" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="catalogue"
 }
}

resource "aws_instance" "user" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="user"
 }
}

resource "aws_instance" "ec2" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="test"
 }
}

resource "aws_instance" "redis" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="redis"
 }
}

resource "aws_instance" "cart" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="cart"
 }
}

resource "aws_instance" "mysql" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="mysql"
 }
}

resource "aws_instance" "shipping" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="shipping"
 }
}

resource "aws_instance" "rabbitmq" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="rabbitmq"
 }
}

resource "aws_instance" "payment" {
 ami ="ami-0a017d8ceb274537d"
 instance_type = "t3.micro"
 vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
 tags = {
  Name="payment"
 }
}