variable "sg_id" {
    description = "sg id for ec2"
    type =string
}

variable "subnet_ids" {
    description = "subenet id for ec2"
    type = list(string)
}


variable "ec2name" {
    description = "ec2 names"
      type = list(string)
    default = ["webserver1"," webserver2"]
}
