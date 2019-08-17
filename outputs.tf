output "server-ip" {
  value = "${aws_eip.terraform-eip.public_ip}"
}
