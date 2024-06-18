output "instance_id" {
  description = "The ID of the AWS instance"
  value       = aws_instance.prashansa_ansible_ec2.id
}

output "public_ip" {
  description = "Public IP"
  value       = aws_instance.prashansa_ansible_ec2.public_ip
}