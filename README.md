# Shift3 DevOps Challenge Project
This project represents a challenge to test your knowledge in IaaC. This will also test your ability to deploy resources in AWS. 

## Challenge Instructions
You will begin by creating a fork of this repository to your own Github account. All work will be completed and reviewed within your own fork. Please do not create a Pull Request (PR) back into this repository.

## Project Information

This is a 4 part resource creation using Terraform.

## Project Requirement 1

- **PEMKEY**
    - You should have received information on how to login to the devopschallenge account. Here you will need to create and download your pemkey.
    This pemkey will be useful as the pemkey will be needed in Project Requirement 3. 

## Project Requirement 2

- **Security Group**
    - Create a security group that whitelist your IP address, and it uses ssh port 22. 
    
## Project Requirement 3

- **EC2**
    - Size: t3.micro
    - Security Group: Use the SG created in Project requirement 1
    - Storage: 10gb Standard SSD
    - IAM Role: arn:aws:iam::961064903225:role/S3ReadWrite
    - key_name - Attach your PEMKEY that you downloaded from Project Requirement 1
    - VPC: Default (public subnet)

## Project Requirement 4

- **S3 Bucket creation**
    - Create the S3 bucket using "yourinitials-s3bucket-challenge"
  
## Project Requirement 5

- **Route 53**
    - Setup subdomain record to be "yourinitials.bwtcdevopschallenge.com"
    - Make an A record to point the subdomain to the EC2.

## Running the project

We will run the project for you to see if the configuration is correct. Once we spin up the resources our final step will be to have you query the s3 bucket in project requirement 4 from inside the EC2 instance. Think of it like a walk-through where you will give us answers to questions such as "how do we get into the instance", "what are the
requirements to query things from the instance", etc. 
