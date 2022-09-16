provider "aws" {
    region = us-west-2
    profile = var.profile
}

resource "aws_instance" "web" {
    # Amazon Linux Application Machine Image (AMI)
    ami = "ami-07ebfd5b3428b6f4d"
    # Free tier instance type
    instance_type = "t2.micro"
    # default and devops_web security groups
    vpc_security_group_ids = [ "sg-048fd3c3d88a86233", "sg-05bca4849397c856c" ]

    tags = {
        Name = var.name
        group = var.group
    }
}