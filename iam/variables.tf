variable "unique_id"{
  default = "skilja-compute"
}

variable "iam_role_name" {
  description = "Name of the IAM Role"
  type        = string
  default     = "skilja-instance-IAM-Role"
}