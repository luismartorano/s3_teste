variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

variable "env" {
  description = "Environment where this module is invoked."
  type        = string
}

variable "team" {
  description = "Team responsible for the bucket."
  type        = string
}

variable "region" {
  description = "aws region"
  type        = string
  default     = "us-east-1"

}

variable "profile" {
  description = "aws profile"
  type        = string
}

