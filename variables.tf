variable "region" {
  type = string
}

variable "start_up_script" {
  type    = string
  default = "scripts/start.sh"
}

variable "public_key" {
  type      = string
  default   = "~/.ssh/awskey.pub"
  sensitive = true
}

variable "ami" {
  type = string
}

variable "my_ip" {
  type        = string
  description = "Your IP address (* if not known)"
}
