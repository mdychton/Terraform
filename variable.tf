variable "availability_zones" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "aws_key_pair" {
  type = string
}

variable "ssh_key_path" {
  type        = string
  description = "Lokalna sciezka do klucza"
}

variable "bucket_name" {
  type = string
}