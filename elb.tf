resource "aws_elb" "myproject" {
	name				= "terraform-asg-myproject"
	availability_zones		= ["data.aws_availability_zones.all.names"]
	security_groups			= ["${aws_security_group.elb.id}"]

	listener {
		lb_port			= "${var.elb_listener["ssl_port"]}"
		lb_protocol		= "${var.elb_listener["ssl_protocol"]}"
		instance_port		= "${var.server_port}"
		instance_protocol	= "${var.elb_listener["instance_protocol"]}"
	}
	
	health_check {
		healthy_threshold	= "${var.health_check["healthy_threshold"]}"
		unhealthy_threshold	= "${var.health_check["unhealthy_threshold"]}"
		timeout			= "${var.health_check["timeout"]}"
		interval		= "${var.health_check["interval"]}"
		target			= "HTTP:${var.server_port}/"
	}
}
