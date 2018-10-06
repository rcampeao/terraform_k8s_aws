#Variables datas to access provider
#PROVIDER.TF
variable "provider_fields" {
	description = ""
	type = "map"
	default = {
	  access_key = ""
	  secret_key = ""
	  region     = ["us-east-1"]
	}
}

# ASG.TF
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
