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
 

}
# #Here You will be creating the EC2 server. 
resource "aws_instance" "web" {
  resource "aws_instance" "web" {
  vpc_security_group_ids = [
      "Default VPC security group here",
  ]

  root_block_device {
    #Fill out the volume size and storage in here.
  }
}


#Create S3 
resource "aws_s3_bucket" "bucket_creation" {


}

#Create route 53 A record to point to IP of EC2
resource "aws_route53_record" "www" {
  zone_id = "You can find this in Route 53 service"

}

