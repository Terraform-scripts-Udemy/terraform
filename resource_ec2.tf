#EC2 instance
resource "aws_instance" "ec2instance" {
    ami = data.aws_ami.amazonlinuxos
    instance_type = var.instance_type
    user_data = file("${path.module}/tomcat_installation.sh")
    key_name = var.instance_keypair
    vpc_security_group_ids = [aws_security_group.ec2_ssh.id, aws_security_group.tomcat_port.id]
    tags = {
        "Name" = "ec2_demo"
    }
}