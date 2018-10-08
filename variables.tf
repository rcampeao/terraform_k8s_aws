#################
## PROVIDER.TF ##
#################
#Data to access provider
variable "provider_fields" {
	description	= ""
	type		= "map"
	default = {
	  access_key	= ""
	  secret_key	= ""
	  region	= ["us-east-1"]
	}
}

############
## ASG.TF ##
############
#Data to build autoscaling group
variable "image_id" {
	description	= ""
	type		= "string"
	default		= "ami-40d28157"
}

variable "instance_type" {
	description	= ""
	type		= "string"
	default		= "t2.micro"
}

variable "asg_min_size" {
	description	= ""
	default		= 2
}

variable "asg_max_size" {
	description	= ""
	default		= 10
}

#################
## FIREWALL.TF ##
#################
#Data to build security group
variable "server_port" {
	description	= ""
	default		= 8080
}

variable "internet" {
	description	= ""
	default		= "0.0.0.0/0"
}

############
## DNS.TF ##
############
#Data to register FQDN (Route53)
variable "mydomain"{
	description	= ""
	type		= "map"
	default = {
		domain	= ""
		name	= ""
	}
}

