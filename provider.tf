# Configure the AWS Provider Access
provider "aws" {
  access_key = "${var.provider_fields.access_key}"
  secret_key = "${var.provider_fields.aws_secret_key}"
  region     = "${var.provider_fields.region}"
}
