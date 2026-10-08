# Output file

output "instance_id" {                              # Outputs the instance ID of the created EC2 instance
    value = aws_instance.app.id                     # References the ID of the EC2 instance created in main.tf
    description = "The ID of the EC2 instance"      
}

output "instance_public_hostname" {                  # Outputs the public hostname of the created EC2 instance
    value = aws_instance.app.public_dns            
    description = "The public hostname of the EC2 instance"
}

output "instance_public_ip" {                       # Outputs the public IP address of the created EC2 instance
    value = aws_instance.app.public_ip              # References the public IP of the EC2 instance created in main.tf
    description = "The public IP address of the EC2 instance"
}

output "instance_private_ip" {                      # Outputs the private IP address of the created EC2 instance
    value = aws_instance.app.private_ip            # References the private IP of the EC2 instance created in main.tf
    description = "The private IP address of the EC2 instance"
}

output "instance_arn" {                              # Outputs the Amazon Resource Name (ARN) of the created EC2 instance
    value = aws_instance.app.arn                     
    description = "The ARN of the EC2 instance"
}

output "instance_state" {                            # Outputs the current state of the created EC2 instance
    value = aws_instance.app.instance_state          # References the state of the EC2 instance created in main.tf
    description = "The current state of the EC2 instance"
}