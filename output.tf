output "public_ip" {
	value = "${aws_instance.myproject.public_ip}"
}

output "elb_dns_name" {
	value = ${aws_elb.myproject.dns_name}
}
