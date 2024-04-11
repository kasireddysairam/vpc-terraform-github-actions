variable "sg_id" {
    description = " sg for application load balancer"
 
  type = string
}

variable "subnets_cidr" {
    description = " subnet for alb"
  type =  list(string)
} 

variable "vpc_id" {
 description = "vpc for alb "
  type = string
} 

variable "instances" {
 description = "vpc for alb "
  type =list(string)
} 