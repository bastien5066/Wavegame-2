resource "aws_elb" "elb" {
  name               = "elb"
  availability_zones = ["eu-west-3a", "eu-west-3b"]

  listener {
    instance_port     = 8000
    instance_protocol = "http"
    lb_port           = 80
    lb_protocol       = "http"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:8000/"
    interval            = 30
  }

  instances                   = [aws_instance.server2.id, aws_instance.server1.id]
  cross_zone_load_balancing   = true
  internal                    = true
  idle_timeout                = 400
  connection_draining         = true
  connection_draining_timeout = 400

  tags = {
    Name = "Elastic Load Balancer"
  }
}