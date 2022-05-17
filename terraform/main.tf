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
  vpc_security_group_ids = [
      "Default VPC security group here",
  ]
}

root_block_device {
  #Fill out the volume size and storage in here.
}


#Create S3 
resource "aws_s3_bucket" "bucket_creation" {


}

#Create route 53 A record to point to IP of EC2
resource "aws_route53_record" "www" {
  zone_id = "You can find this in Route 53 service"

}