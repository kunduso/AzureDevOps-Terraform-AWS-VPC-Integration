variable "region" {
  description = "The region where to provision resources"
  type        = string
}
variable "network_address_space" {
  default = "10.1.0.0/16"
}
variable "access_key" {
  description = "The access_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}
variable "secret_key" {
  description = "The secret_key that belongs to the IAM user"
  type        = string
  sensitive   = true
}