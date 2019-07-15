provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "app" {

  ami = "ami-0cfee17793b08a293"
  instance_type = "t2.micro"

  # NOTE: the variable definition file named "terraform.tvars" is auto loaded by `plan`
  # if otherwise named, you must define it via -var-file

  # NOTE when deploying, first run `plan -var-file prod.tfvars -out prod` to emit a config with that state
  # then run `apply prod` to deploy

  # create two vms, one in each sub-zone of nova
  count = "${var.total_boxes}"

  # use built-in iterator via 'index' to create one per zone
  availability_zone = "${var.zones[count.index]}"

}
