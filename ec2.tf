module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 5.7.1"

  name = var.project_name

  create_spot_instance = var.spot_instance
  spot_type            = var.spot_type

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  key_name      = aws_key_pair.ssh-key.key_name
  subnet_id     = var.subnet_id

  ignore_ami_changes = true

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id,
    var.sg_id
  ]

  root_block_device = [{
    volume_type = var.volume_type
    volume_size = var.volume_size
  }]

  tags = {
    Name = var.project_name
  }
}
