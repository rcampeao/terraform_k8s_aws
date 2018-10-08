#!/bin/bash

terraform remote config \
	-backend=s3 \
	-backend-config="bucket=(terraform-myproject-state)" \
	-backend-config="key=global/s3/terraform.tfstate" \
	-backend-config="region=us-east-1" \
	-backend-config="encrypt=true"
