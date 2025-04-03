variable "start_up_script" {
  type    = string
  default = "scripts/start.sh"
}

variable "public_key" {
  type = string
}

variable "my_ip" {
  type        = string
  description = "Your IP address in CIDR notation (use * if not known)"
}
