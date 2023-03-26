module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name = "terraform-module-instance"

  ami                    = "ami-0f8ca728008ff5af4"
  instance_type          = "t2.micro"
  key_name               = "new-keypair"
  monitoring             = true
  vpc_security_group_ids = ["sg-072fd59a9880d16be"]
  subnet_id              = "subnet-057cf01fca6cab48a"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
