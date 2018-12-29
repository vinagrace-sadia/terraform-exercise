provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "base" {
  ami                    = "${var.ami[var.region]}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["${var.security_group_ids[0]}"]

  tags {
    Name = "site-vin"
  }
}

resource "aws_eip" "base" {
  instance = "${aws_instance.base.id}"
}
