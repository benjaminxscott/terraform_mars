# NOTE: this will use the 'default' ~/.aws/credentials profile
# or you can redefine it with 'profile = '

provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "app" {

  # NOTE: marketplace ami ID always differ across regions (since EBS is different)
  # your own amis should be the same across regions

  ami = "ami-00c4c5c99df100e1d"
  instance_type = "t2.micro"

}
