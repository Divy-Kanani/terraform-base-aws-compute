variable "unique_id"{
  default = "skilja-compute"
}

variable "security_group_name" {
  description = "Name of the Security Group"
  type        = string
  default     = "skilja-instance-sg"
}