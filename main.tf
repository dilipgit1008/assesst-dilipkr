terraform {
	required_providers {
	  aws = {
	    source  = "hashicorp/aws"
      version = "~> 3.27"
	  }
	}
}


provider  "aws" {
  access_key = var.aws_accesskey
  secret_key = var.aws_secretkey
  region     = var.aws_region
}

resource aws_instance asset_ec2 {
  ami           = "ami-0c1a7f89451184c8b"
  instance_type = "t2.micro"
  key_name      = var.aws_key
  subnet_id     = "subnet-1397b57b"
  tags  = {
    Name = "myasset"
  }
 vpc_security_group_ids  = var.aws_sg
 root_block_device {
    volume_type = "gp2"
    volume_size = "10"
  }

}


resource aws_eip asset_ec2_ip {
  instance = aws_instance.asset_ec2.id
  vpc      = "true"
}





