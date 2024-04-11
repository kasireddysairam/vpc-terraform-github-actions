variable "vpc_cidr" {
  description = "vpc cidr range"
  type        = string

}

variable "subnets_cidr" {
  description = "subnet cidr range"
  type        = list(string)

}