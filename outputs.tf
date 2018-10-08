output "public_ip" {
	value = "${aws_instance.myproject.public_ip}"
}

