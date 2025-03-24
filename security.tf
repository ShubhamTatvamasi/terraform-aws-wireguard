resource "aws_security_group" "ec2_sg" {
  name   = "${var.project_name} Security Group"
  vpc_id = var.vpc_id

  dynamic "ingress" {
    for_each = concat(var.sg_tcp_ports, var.sg_udp_ports)
    content {
      from_port        = ingress.value
      to_port          = ingress.value
      protocol         = contains(var.sg_tcp_ports, ingress.value) ? "tcp" : "udp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks = ["::/0"]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "${var.project_name} Security Group"
  }
}
