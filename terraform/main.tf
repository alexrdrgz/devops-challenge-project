#Every block should be empty
terraform {
  backend "s3" {
   
  }
}

#Let them play with profile, make configurable values, a variable. like profile. it should be var.aws_profile. 
provider "aws" {
  

}


#Here you will configure your security group to allow SSH on port 22 from ONLY your IP address.

resource "aws_security_group" "allow_ssh" {
 

}
# #Here You will be creating the EC2 server. 
resource "aws_instance" "web" {
  
}


#Create S3 
resource "aws_s3_bucket" "bucket_creation" {


}

#Create route 53 A record to point to IP of EC2
resource "aws_route53_record" "www" {

}

