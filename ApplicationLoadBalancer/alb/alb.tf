resource "aws_alb" "alb" {
  name = "sample-alb"
  internal = false
  load_balancer_type = "application"
  security_groups = [aws_security_group.sg.id]
  subnets = [aws_subnet.subnet1.id,aws_subnet.subnet2.id]
  tags = {
    Name = "sample_alb"
  }
}

resource "aws_lb_target_group" "target_group" {
    name = "alb-target-group"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.main.id
    health_check {
        interval = 30
        path = "/health"
        protocol = "HTTP" 
        timeout = 5
        healthy_threshold = 5
        unhealthy_threshold = 2   
    }
    tags = {
        Name = "sample_alb_target_group"
    }
}

resource "aws_lb_listener" "alb_listener" {
    load_balancer_arn = aws_alb.alb.arn
    port = 80
    protocol = "HTTP"
    default_action {
      type = "forward"
      target_group_arn = aws_lb_target_group.target_group.arn
    }
    tags = {
      Name = "alb_listener"
    }
}