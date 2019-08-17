resource "aws_eip" "terraform-eip" {
  instance = "${aws_instance.terraform-instance.id}"
  tags = {
    Name = "Terraform-Test"
  }
}
