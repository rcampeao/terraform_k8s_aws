resource "aws_security_group" "project-instance" {
	name	= "terraform-project-instance"
	# ingress rules
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
