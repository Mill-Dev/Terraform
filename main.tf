resource "aws_instance" "terraform-instance" {
  ami = "${data.aws_ami.ubuntu.id}"
  instance_type = "t2.micro"
  key_name = "Cloudform-Keys"
  vpc_security_group_ids = ["sg-0aa23477f8a10ac1c"]
  subnet_id = "subnet-0f11320b7ece8fccf"
  root_block_device {
    delete_on_termination = true
    volume_size = 10
    volume_type = "gp2"
  }
  tags = {
    Name = "TF-Test"
  }
  volume_tags = {
    Name = "TF-Test"
  }
}
