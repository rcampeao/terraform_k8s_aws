resource "dnsimple_record" "myproject" {
	domain		= "${var.mydomain["domain"]}"
	name		= "${var.mydomain["register"]}"
	value		= "${aws_elb.myproject.dnsname}"
	type		= "cname"
}
