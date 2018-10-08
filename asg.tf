resource "aws_launch_configuration" "myproject" {
	image_id			= "${var.image_id}"
	instance_type			= "${var.instance_type}"
	security_groups			= ["${aws_security_group.instance.id}"]
	user_data			= <<-EOF
					#!/bin/bash
					echo "Hello, World"
					EOF

	lifecycle {
		create_before_destroy 	= true
	}
}

resource "aws_autoscaling_group" "myproject" {
	launch_configuration		= "${aws_launch_configuration.myproject.id}"
	availability_zones		= ["${data.aws_availability_zones.all.names}"]
	load_balancers			= ["${aws_elb.myproject.name}"]
	health_check_type		= "ELB"
	min_size			= "${var.asg_min_size}"
	max_size			= "${var.asg_max_size}"
	tag {
		key			= "Name"
		valeu			= "terraform-asg-myproject"
		propagate_at_launch	= true
	}
}
