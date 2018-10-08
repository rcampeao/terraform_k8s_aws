resource "aws_security_group" "instance" {
	name			= "terraform-myproject-instance"
	ingress	= {
		from_port	= "${var.server_port}" 
		to_port		= "${var.server_port}"
		protocol	= "tcp"
		cidr_blocks	= ["${var.internet}"]
	}

	lifecycle {
		create_before_destroy = true
	}
}

resource "aws_security_group" "elb" {
	name			= "terraform-myproject-elb"
	ingress = {
		from_port	= "${var.elb_listener["ssl_port"]}"
		to_port		= "${var.elb_listener["ssl_port"]}"
		protocol	= "${var.elb_listener["ssl_protocol"]}"
		cidr_blocks	= "${var.internet}"
	}
	egress = {
		from_port	= 0
		to_port		= 0
		protocol	= "-1"
		cidr_blocks	= "${var.internet}"
	}
}
