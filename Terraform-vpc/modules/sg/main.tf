resource "aws_security_group" "sg" {
  name        = " pulic sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = var.vpc_id

  tags = {
    Name = "public sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "inboundrules_http" {
  security_group_id = aws_security_group.sg.id
  
  from_port         = 80
  ip_protocol       = "tcp"
  to_port           = 80
   cidr_ipv4 =   "0.0.0.0/0"
}

resource "aws_vpc_security_group_ingress_rule" "inboundrules_ssh" {
  security_group_id = aws_security_group.sg.id
  from_port         = 22
  ip_protocol       = "tcp"
  to_port           =  22
  cidr_ipv4 =   "0.0.0.0/0"
}


resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" 
}
