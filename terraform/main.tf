#Here you will configure your terraform and backend 
terraform {
  backend "s3" {
   
  }
}

# Here you will configure your provider (AWS)
provider "aws" {
  

}


#Here you will configure your security group to allow SSH on port 22 from ONLY your IP address.
resource "aws_security_group" "allow_ssh" {
  name = "alex-security-group"
  description = "seccurity group that allows you to ssh to port 22 from your personal IP"
  vpc_id = aws_vpc.main.id

  # Not sure if its better to create the rule in here? 
  # ex. ingress {....}   
}

resource "aws_security_group_rule" "private_ssh_inbound_rule" {
  type = ingress
  from_port = 0
  to_port = 22
  protocol = "-1"
  cidr_blocks = [ "76.224.230.251" ]

  security_group_id = aws_security_group.allow_ssh.id
}

# #Here You will be creating the EC2 server. 
resource "aws_instance" "web" {
  count = 1
  instance_type = t3.micro
  security_groups = [ "allow_ssh" ]
  key_name = "alex-devops-challenge"
  iam_instance_profile = "arn:aws:iam::961064903225:role/S3ReadWrite"
  

  vpc_security_group_ids = [
      "sg-0e85eb9b181e03ab0",
  ]

  root_block_device {
    volume_size = 10
    volume_type = standard
    
  }
}

#Create S3 
resource "aws_s3_bucket" "bucket_creation" {
    bucket = "ar-s3bucket-challenge"
}

#Create route 53 A record to point to IP of EC2
resource "aws_route53_record" "www" {
  zone_id = ""
  name = "ar.bwtcdevopschallenge.com"
  type = "A"
  ttl = 300
  records = [aws_instance.web.public_ip]
}