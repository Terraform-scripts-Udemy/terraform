#EC2 instance
resource "aws_instance" "ec2instance" {
    ami = ami-008b85aa3ff5c1b02
    instance_type = var.instance_type
    key_name = var.instance_keypair
    tags = {
        "Name" = "ec2_demo"
    }
}