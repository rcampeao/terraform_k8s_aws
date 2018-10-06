resource "aws_launch_configuration" "project" {
	image_id	=	"${var.image_id}"
	instance_type	=	"${var.instance_type}"
	security_groups	=	["${aws_security_group.instance.id}"]
	user_data	=	<<-EOF
				#!/bin/bash
				echo "Hello, World"
				EOF

	lifecycle {
		create_before_destroy = true
	}
}
