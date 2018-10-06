output "public_ip" {
	value = "${aws_instance.project-instance.public_ip}"
}

