module "ec2" {
  source       = "./modules/infra/ec2"
  ami          = var.ami
  machine_name = "${var.ami}-${var.machine_name}"
  subnet       = var.subnet
  vm_type      = var.vm_type
  sg_Name      = "${var.sg_Name}-${var.machine_name}"
  region       = var.region
  
}