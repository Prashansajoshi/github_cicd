resource "aws_instance" "prashansa_ansible_ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.my_subnet
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = "true"
  iam_instance_profile        = aws_iam_instance_profile.this.name

  tags = {
    Name        = "prashansa-ec2"
    owner       = "prashansa.joshi"
    silo        = "intern2"
    environment = "dev"
    terraform   = "true"
  }
}
