output "elb_dns_name" {
	value = "${aws_elb.myproject.dns_name}"
}
