# This is setting variables for the Mumbai region in AWS.

# Step 1 : Declares a variable called env, Used to tag resources with environment names.
variable "env" {
  description = "Environment name (e.g., dev, prod, test)"
  type        = string
}

# Step 2: Declares a variable called ami_id, instance_type, region Used to specify the type of EC2 instance to be created.
variable "ami_id" {
  description = "AMI ID for the EC2 instance"       # Input for the Amazon Machine Image (AMI) ID. This defines the OS. 
  type        = string
} 

variable "instance_type" {
  description = "EC2 instance type"                 # Input for the EC2 size (e.g., t3.micro or t2.small or t3.medium). This defines the instance type for the EC2 instance.
  type        = string
}

variable "region" {
  description = "AWS region for the resources"      # Input for the AWS region (e.g., ap-south-1). This defines the region where AWS resources will be created.
  type        = string
}

# Step 3: Declares a variable called volume size, type
variable "volume_size" {
  description = "Root volume size in GB"            # Input for the size of the EBS volume in GB. This defines the storage size for the EC2 instance.
  type        = number
  default     = 8                                   # Default value is set to 8 GB, which is a common size for root volumes.
}

variable "volume_type" {
  description = "Root volume type (e.g., gp2, io1)" # Input for the type of EBS volume (e.g., gp2, io1). This defines the storage type for the EC2 instance.
  default     = "gp2"                               # Default value is set to gp2, which is a general-purpose SSD volume type.
  type        = string
}

#Step 4: Declares a variable called default security group, key_name Used to specify the key pair for SSH access to the EC2 instance.
variable "security_group" {
  description = "security group attached  to the EC2 instance" 
  type        = string
  default     = "default"                            # Default value is set to default, which is the default security group in AWS.
}

variable "key_name" {
  description = "Key pair name for SSH access"       # Input for the key pair name used for SSH access to the EC2 instance.
  type        = string
  default     = "null"                              # Default = null → optional, but recommended if you want direct SSH access.
}

