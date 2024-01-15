variable "aws_region" {
  description = "the value of the region"
  type        = string
  default     = "us-east-1"
}

variable "machine_name" {
  description = "the value of the machine name"
  type        = string
  default     = "techstarte-server"
}

variable "linux_ami" {
  description = "value of the linux ami"
  type        = string
  default     = "ami-0005e0cfe09cc9050"
}