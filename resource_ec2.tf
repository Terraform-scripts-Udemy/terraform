#EC2 instance
resource "aws_instance" "ec2instance" {
    ami = data.aws_ami.amazonlinuxos
    instance_type = var.instance_type
    key_name = var.instance_keypair
    tags = {
        "Name" = "ec2_demo"
    }
}