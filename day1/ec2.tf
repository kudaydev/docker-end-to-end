# resource "aws_instance" "my_app" {
#   ami                         = var.instance_ami
#   instance_type               = var.instance_type
#   availability_zone           = var.availability_zone
#   vpc_security_group_ids      = [aws_security_group.pub_sg.id]
#   associate_public_ip_address = true
#   subnet_id                   = aws_subnet.my_app.id
#   key_name                    = aws_key_pair.key_pair.key_name
#   tags = {
#     Name = "Docker-Lab"
#   }
# }

# resource "tls_private_key" "rsa_key" {
#   algorithm = "RSA"
#   rsa_bits  = 4096
# }

# resource "aws_key_pair" "key_pair" {
#   key_name   = "docker-key"
#   public_key = tls_private_key.rsa_key.public_key_openssh
# }

# resource "local_file" "priate_key" {
#   content  = tls_private_key.rsa_key.private_key_pem
#   filename = "docker-key"
# }
