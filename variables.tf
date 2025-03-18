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
  default     = "t3a.micro"
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
  type        = string
  description = "arm64 or amd64"
  default     = "amd64"
}

variable "vpc_id" {
  type        = string
  description = "VPC ID"
  default     = "vpc-0695ffe4eeef93d16"
}

variable "subnet_id" {
  type        = string
  description = "Subnet ID"
  default     = "subnet-0b05255fc94ebeec5"
}

variable "sg_id" {
  type        = string
  description = "Security Group ID"
  default     = "sg-097007cdc5ce4d13a"
}
