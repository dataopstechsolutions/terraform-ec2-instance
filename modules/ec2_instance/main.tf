# This is your terraform resources file, where we document all the resources that we are going to create.
data "aws_security_group" "default_sg" { 
  filter {
    name   = "group-name"
#    values = ["Default_SG"]
     values = ["default"]                               # ✅ use group-name, not display name
  }
  vpc_id = "vpc-0f6c27799bc54e391"   # your VPC ID
}

resource "aws_instance" "app" {                         # Creates an EC2 instance named app
    ami           = var.ami_id                          # Uses AMI ID passed in from variable.tf file
    instance_type = var.instance_type                   # Uses instance type passed in from variable.tf file
    region        = var.region                          # Uses region passed in from variable.tf file
    key_name      = var.key_name                         # Uses key pair name passed in from variable.tf file
    root_block_device {
        volume_size = var.volume_size                   # Uses root volume size passed in from variable.tf file
        volume_type = var.volume_type                   # Uses root volume type passed in from variable.tf file
    }
    vpc_security_group_ids = [data.aws_security_group.default_sg.id]       # Attaches security group

    tags = {                                            # Tags resources with environment name (e.g., dev-app).
        Name        = "${var.env}-app"                  
        Environment = var.env                           
    }
}




