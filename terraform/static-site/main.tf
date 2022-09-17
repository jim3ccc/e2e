provider "aws" {
    region = "us-west-1"
    profile = var.profile
}

resource "aws_instance" "web" {
    # Amazon Linux Application Machine Image (AMI)
    ami = "ami-085284d24fe829cd0"
    # Free tier instance type
    instance_type = "t2.micro"
    # default and devops_web security groups
    vpc_security_group_ids = [ "sg-048fd3c3d88a86233", "sg-05bca4849397c856c" ]
    # name of the EC2 key pair for sshing
    key_name = "dev1"
    # number of EC2 instances to provision (one for jenkins, one for site)
    count = 1

    tags = {
        # Tags allow you to categorize your AWS resource
        Name = var.name
    }
}