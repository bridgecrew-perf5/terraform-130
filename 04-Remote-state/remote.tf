resource "aws_instance" "sample" {
  ami                       = "ami-074df373d6bafa625"
  instance_type             = "t2.micro"

  tags = {
    Name                    =  "Sample"
  }
}

terraform {
  backend "s3" {
    bucket                  = "devopsbyvb9"
    key                     = "sample/terraform.tfstate"
    region                  = "us-east-1"
  }
}