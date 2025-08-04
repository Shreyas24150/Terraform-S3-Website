variable "bucket_name" {
  description = "Globally unique bucket name"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
