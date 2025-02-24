output "bastion_instance_public_ip" {
  value       = aws_instance.bastion.public_ip
  description = "Public IP address of the bastion host"
}

output "bastion_instance_id" {
  value       = aws_instance.bastion.id
  description = "ID of the bastion host EC2 instance"
}

output "security_group_id" {
  value = aws_security_group.bastion_sg.id
  description = "ID of the bastion host security group"
}