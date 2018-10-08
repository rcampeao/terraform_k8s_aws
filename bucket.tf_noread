resource "aws_s3_bucket" "terraform_state" {
	bucket			= "terraform-myproject-state"

	versioning {
		enabled		= true
	}

	lifecycle {
		prevent_destroy	= true
	}
}
