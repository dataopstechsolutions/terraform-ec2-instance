# This will calls the EC2 module for test environment.
module "ec2_test" {                                  # Calls the EC2 module for the Test environment
  source        = "../modules/ec2_instance"          # Specifies the path to the EC2 module
  env           = "test"                             # Sets the environment name to test
  ami_id        = "ami-01a00762f46d584a1"            # Specifies the AMI ID for the EC2 instance - Ubuntu Server 26.04 LTS (HVM), 64bit-x86_64, SSD Volume Type 
  instance_type = "t3.micro"                         # Specifies the instance type for the EC2 instance
  region        = "ap-south-1"                       # Specifies the AWS region for the resources
  volume_size   = 8                                  # Specifies the root volume size in GB
  volume_type   = "gp2"                              # Specifies the root volume type (e.g., gp2, io1)
  security_group = "Default_SG"                      # Specifies the default security group attached to the EC2 instance, present in AWS 
  key_name      = "my-ssh-key"                       # Specifies the key pair name for SSH access (optional) and Must be available in the Mumbai region. 
  #If you want to access the EC2 instance via SSH, you need to create a key pair in the AWS console and provide the name here.
}