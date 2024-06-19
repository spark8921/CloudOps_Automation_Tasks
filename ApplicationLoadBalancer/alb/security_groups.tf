#defines an aws security group resource named "sg"
resource "aws_security_group" "sg" {
    #associates the security group with the vpc created by the "aws_vpc.main"  resource
    vpc_id = aws_vpc.main.id
    #defines an ingress rule for incoming traffic
    ingress {
        #allows traffic on port no 80 (HTTP)
        from_port = 80
        to_port = 80
        #specifies the tcp protocol for incoming traffic
        protocol = "tcp"
        #Allows traffic from anywhere in the world
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        #defines an egress rule for outgoing traffic
        #Allows traffic on any port (0-65535)
        from_port = 0
        to_port = 0
        #Allows any protocol
        protocol = "-1"
        #Allows traffic to any destination
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags={
        Name="main_secutiy_group"
    }
  
}