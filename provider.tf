# This is common provider file for all environment. 
# This file is for the AWS provider configuration for the Mumbai region. It specifies the region where AWS resources will be created.

provider "aws" {                        # Tells Terraform we’re using AWS as the cloud provider.
  region = "ap-south-1"                 # Sets the region to Mumbai. This applies globally to all modules and environments.
}