provider "aws" {
  region = "us-east-2"
}

variable "zones"{
  default = ["us-east-2a","us-east-2b"]
}

variable "total_boxes"{
  default = 2
}

resource "aws_instance" "app" {

  ami = "ami-be7753db"
  instance_type = "t2.micro"

  # create two vms, one in each sub-zone of nova
  count = "${var.total_boxes}"

  # use built-in iterator via 'index' to create one per zone
  availability_zone = "${var.zones[count.index]}"

}
