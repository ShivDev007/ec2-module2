resource "aws_security_group" "web-sg" {
  name = var.sg_Name
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
   ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags = {
    Name = var.sg_Name
  }
}


resource "aws_instance" "machine1" {
  ami = var.ami
  key_name = "key1"
  subnet_id = var.subnet
  instance_type = var.vm_type
  security_groups = [aws_security_group.web-sg.id]
  depends_on = [ aws_security_group.web-sg ]
  tags = {
    Name = var.machine_name
  }

}