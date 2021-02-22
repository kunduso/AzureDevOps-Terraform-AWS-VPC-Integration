variable "region" {
  description = "The region where to provision resources"
  type        = string
}
variable "network_address_space" {
  default = "10.1.0.0/16"
}