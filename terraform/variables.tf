variable "aws_profile" {
  description = "This variable should represent the profile configured on your local machine after running aws configure"
}

variable "aws_region" {
  description = "This variable represents the AWS region where all of the resources Terraform provisions will live, we normally default this to us-west-2 as it is cheaper than us-west-1"
  default     = "us-west-2"
}

