resource "aws_db_instance" "myproject" {
	engine			= "${var.db_settings["engine"]}"
	allocated_storage	= "${var.db_settings["allocated_storage"]}"
	instance_class		= "${var.db_settings["instance_class"]}"
	name			= "${var.db_settings["name"]}"
	username		= "${var.db_settings["username"]}"
	password		= "${var.db_password}"
}
