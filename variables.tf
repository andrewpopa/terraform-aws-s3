variable "bucket" {
  description = "S3 bucket name"
  type        = string
  default     = ""
}

variable "acl" {
  description = "Default private ACL"
  type        = string
  default     = "private"
}

variable "policy" {
  description = "Default policy"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "Tags for S3 bucket"
  type        = map
  default     = {}
}

variable "force_destroy" {
  description = "All object should be deleted"
  type        = bool
  default     = false
}

variable "region" {
  description = "AWS region for S3 bucket"
  type        = string
  default     = ""
}

variable "versioning" {
  description = "Versioning on the s3 bucket"
  type        = bool
  default     = true
}