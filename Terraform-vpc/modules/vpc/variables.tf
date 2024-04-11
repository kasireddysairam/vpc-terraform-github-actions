variable "vpc_cidr" {
    description = "vpc cidr range"
    type= string
  
}

variable "subnets_cidr" {
    description = "subnet cidr range"
    type= list(string)
  
}

variable "subnet_names" {
  description = "public  subnet names"
   type = list(string)
   default = ["publicsubnet1","publicsubnet2"]
}