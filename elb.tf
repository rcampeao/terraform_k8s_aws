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
}
