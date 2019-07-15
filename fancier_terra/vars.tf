# instantiate the vars
# NOTE: vars must be instantiated at some point, in this case terra will glob up all *.tf files

# this could also exist in the main.tf, it would just be messier

# NOTE: running `terraform plan` will ignore these initial values and create two boxes
# since a terraform.tvars exists in the cwd

variable "zones"{
  default = ["us-east-1a"]
}

variable "total_boxes"{
  default = 1
}
