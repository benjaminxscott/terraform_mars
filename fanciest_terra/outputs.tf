# emit the assigned public IP addresses of our boxen

output "public_ip_addresses" {
  value = "${aws_instance.app.*.public_ip}"
}
