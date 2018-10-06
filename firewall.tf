resource "aws_security_group" "project-instance" {
	name = "terraform-project-instance"
	# ingress rules
	ingress = {
		from_port = 8080
		to_port = 8080
		protocol = "tcp"
		cidr_blocks = ["0.0.0.0/0"]
	}
}
