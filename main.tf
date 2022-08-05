# # lass
# // 12
# resource "aws_s3_bucket" "b-1" {
#   bucket = "s3-website-test-hashicorp1com"
#             acl = "private"
# }


# resource "aws_s3_bucket" "b_2" {
#   bucket = "prod-test-123-v1"
#             acl = "private"
# }

# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# resource "aws_instance" "web" {
#   ami           = data.aws_ami.ubuntu.id
#   instance_type = "t1.micro"

#   tags = {
#     Name = "HelloWorld"
#   }
# }


output "name" {
  value = var.TEST
}