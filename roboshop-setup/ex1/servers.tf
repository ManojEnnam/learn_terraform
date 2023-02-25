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

resource "aws_route53_record" "frontend" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "frontend-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.frontend.private_ip]
}


resource "aws_instance" "mongobd" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="mongodb"
  }
}

resource "aws_route53_record" "mongodb" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "mongodb-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mongodb.private_ip]
}

resource "aws_instance" "catalogue" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="catalogue"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "catalogue-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.catalogue.private_ip]
}

resource "aws_instance" "user" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="user"
  }
}

resource "aws_route53_record" "user" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "user-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.user.private_ip]
}


resource "aws_instance" "redis" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="redis"
  }
}

resource "aws_route53_record" "redis" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "redis-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.redis.private_ip]
}

resource "aws_instance" "cart" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="cart"
  }
}

resource "aws_route53_record" "cart" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "cart-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.cart.private_ip]
}

resource "aws_instance" "mysql" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="mysql"
  }
}

resource "aws_route53_record" "mysql" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "mysql-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.mysql.private_ip]
}

resource "aws_instance" "shipping" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="shipping"
  }
}
resource "aws_route53_record" "shipping" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "shipping-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.shipping.private_ip]
}

resource "aws_instance" "rabbitmq" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="rabbitmq"
  }
}

resource "aws_route53_record" "rabbitmq" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "rabbitmq-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.rabbitmq.private_ip]
}

resource "aws_instance" "payment" {
  ami ="ami-0a017d8ceb274537d"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0a24894194ed64d1c"]
  tags = {
    Name="payment"
  }
}

resource "aws_route53_record" "payment" {
  zone_id = "Z004033519RCN4QY9DPYQ"
  name    = "payment-dev.manojkumarennamdevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.payment.private_ip]
}