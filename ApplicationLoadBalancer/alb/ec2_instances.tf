resource "aws_instance" "web_instance" {
  ami= var.web_instance_ami
  instance_type = var.web_instnace_type
  subnet_id = aws_subnet.subnet1.id
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags={
    Name="web-server"
  }
}

resource "aws_lb_target_group_attachment" "lb_attachment" {
  target_group_arn = aws_lb_target_group.target_group.arn
  target_id = aws_instance.web_instance.id
  port = 80
}