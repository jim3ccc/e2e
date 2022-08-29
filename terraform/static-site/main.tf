provider "aws" {
    region = var.region
    profile = var.profile
}

resource "aws_instance" "web" {
    # Amazon Linux Application Machine Image (AMI)
    ami = "ami-018d291ca9ffc002f"
    # Free tier instance type
    instance_type = "t2.micro"
    # key pair created before
    key_name = "dev1"
    # default and devops_web security groups
    vpc_security_group_ids = [ "sg-048fd3c3d88a86233", "sg-05bca4849397c856c" ]

    tags = {
        Name = var.name
    }
}