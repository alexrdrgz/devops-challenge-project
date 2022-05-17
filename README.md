# Shift3 React Challenge Project
This project represents a challenge to test your knowledge in IaaC. This will also test your ability to deploy resources in AWS. 

## Challenge Instructions
You will begin by creating a fork of this repository to your own Github account. All work will be completed and reviewed within your own fork. Please do not create a Pull Request (PR) back into this repository.

## Project Information

This is a 3 part resource creation using Terraform. Please use this [link][Docker Desktop for Mac](https://docs.docker.com/docker-for-mac/install/) to download the AWS Cli for your OS.

## Project Requirement 1

- PEMKEY
    - You should have received information on how to login to the devopschallenge account. Here you will need to create and download your pemkey.
    This pemkey will be useful as the pemkey will be needed in Project Requirement 3. 

## Project Requirement 2

- Security Group
    - Create a security group that whitelist your IP address, and it uses ssh port 22. 
    
## Project Requirement 3

- EC2
    - Size: t3.micro
    - Security Group: Use the SG created in Project requirement 1
    - Storage: 10gb Standard SSD
    - IAM Role: arn:aws:iam::961064903225:role/S3ReadWrite
    - key_name - Attach your PEMKEY that you downloaded from Project Requirement 1
    - VPC: Default (public subnet)

## Project Requirement 4

- S3 Bucket creation
    - Create the S3 bucket using "yourinitials-s3bucket-challenge"
  
## Project Requirement 5

- Route 53 
    - Setup subdomain record to be "yourinitials.bwtcdevopschallenge.com"
    - Make an A record to point the subdomain to the EC2.

## Running the project

- Your project will be do