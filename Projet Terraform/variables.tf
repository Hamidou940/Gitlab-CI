variable "aws_region" {
  default = "eu-west-3"
}

variable "runtime" {
  type    = string
  default = "python3.8"
}

variable "group_id" {
  type    = string
}

variable "aws_access_key" {
  type    = string
  default = "$AWS_ACCESS_KEY_ID"
}

variable "aws_secret_key" {
  type    = string
  default = "$AWS_SECRET_KEY_ID"
}
