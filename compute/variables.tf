variable "unique_id"{
  default = "skilja-compute"
}

variable "instance_identifier"{
}

variable "ami_id" {
  description = "ID of the desired AMI"
  type        = string
  default     = "ami-069d73f3235b535bd" 
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t2.micro" 
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = "skilja-instance" 
}

variable "instance_key_name" {
  description = "Key name for the instance"
  type        = string
  default     = "skilja" 
}

variable "iam_role_name" {
  description = "Name of the IAM Role"
  type        = string
  default     = "skilja-instance-IAM-Role"
}

variable "security_group_name" {
  description = "Name of the Security Group"
  type        = string
  default     = "skilja-instance-sg"
}