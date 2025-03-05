variable "project_name" {
  type        = string
  description = "Project Name"
  default     = "wireguard"
}

variable "sg_tcp_ports" {
  type        = list(number)
  description = "Security Group TCP Ports"
  default     = [22, 80, 443]
}

variable "sg_udp_ports" {
  type        = list(number)
  description = "Security Group UDP Ports"
  default     = [51820]
}

variable "instance_type" {
  type        = string
  description = "Instance Type"
  default     = "t4g.nano"
}

variable "volume_size" {
  type        = number
  description = "Volume Size"
  default     = 8
}

variable "volume_type" {
  type    = string
  default = "gp3"
}

variable "spot_instance" {
  type    = bool
  default = false
}

variable "spot_type" {
  type    = string
  default = "one-time"
}

variable "architecture" {
  type    = string
  default = "arm64"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-08602c57bc3adf384"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
  default     = "subnet-02882b68cf38556c5"
}

variable "sg_id" {
  type        = string
  description = "Security Group ID"
  default     = "sg-068d302c94a794966"
}
