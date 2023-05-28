#EC2 instance
resource "aws_instance" "ec2instance" {
    ami = ami-008b85aa3ff5c1b02
    instance_type = t2.micro
    key_name = practisekey
    tags = {
        "Name" = "ec2_demo"
    }
}