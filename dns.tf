resource "dnsimple_record" "myproject" {
	domain		= "${var.mydomain["domain"]}"
	name		= "${var.mydomain["register"]}"
	value		= "${output.elb_dns_name}"
	type		= "cname"
}
