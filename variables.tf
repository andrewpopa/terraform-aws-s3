variable "bucket" {
  type        = string
  default     = ""
  description = "S3 bucket name"
}

variable "acl" {
  type        = string
  default     = "private"
  description = "Default private ACL"
}

variable "policy" {
  type        = string
  default     = "private"
  description = "Default private ACL"
}

variable "tags" {
  type        = map
  default     = {}
  description = "Tags for S3 bucket"
}

variable "force_destroy" {
  type        = bool
  default     = false
  description = "All object should be deleted"
}

variable "region" {
  type        = string
  default     = ""
  description = "AWS region for S3 bucket"
}

variable "versioning" {
  type        = bool
  default     = true
  description = "Versioning on the s3 bucket"
}