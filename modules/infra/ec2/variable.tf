variable "ami" {
    description = "ami for os configuration and distribution"
    type = string
  
}
variable "region" {

    description = "region in which resource will get create"
    type = string
}


variable "subnet" {
    description = "subnet in which the instance will get attach"
    type=string
}
variable "vm_type" {
    description = "type of the machine"
    type = string
  
}


variable "sg_Name" {
  description = "name of the firewall applied to the vm"
  type = string
  
}

variable "machine_name" {
  description = "name of the machine"
  type = string
  
}