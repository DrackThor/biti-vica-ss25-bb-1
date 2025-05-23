# terraform.tf
terraform {
  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "0.64.1"
    }
  }
}

provider "exoscale" {
  key    = var.key
  secret = var.secret
}

# sg.tf
resource "exoscale_security_group" "sg_ssh_only" {
  name = "ssh-only"
}

resource "exoscale_security_group_rule" "sg_rule_ssh_ingress" {
  security_group_id = exoscale_security_group.sg_ssh_only.id
  type              = "INGRESS"
  protocol          = "TCP"
  cidr              = "0.0.0.0/0" # "::/0" for IPv6
  description       = "Allow SSH access from anywhere"
  start_port        = 22
  end_port          = 22
}

# vm.tf
data "exoscale_template" "linux_22_vie" {
  zone = "at-vie-1"
  name = "Linux Ubuntu 22.04 LTS 64-bit"
}

resource "exoscale_compute_instance" "vm" {
  zone = "at-vie-1"
  name = "demo-2"

  template_id        = data.exoscale_template.linux_22_vie.id
  type               = "standard.small"
  disk_size          = 50
  security_group_ids = [exoscale_security_group.sg_ssh_only.id]
  ssh_keys           = [exoscale_ssh_key.my_ssh_key.name]
  # user_data = templatefile("${path.module}/cloud_init.tpl", { text = "hello-world"})
  user_data = templatefile("${path.module}/cloud_init_2.tpl", { ssh_key = tls_private_key.my_ssh_key.public_key_openssh })
}

resource "tls_private_key" "my_ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "exoscale_ssh_key" "my_ssh_key" {
  name       = "my-ssh-key"
  public_key = tls_private_key.my_ssh_key.public_key_openssh
}

resource "local_file" "private_key_pem" {
  content         = tls_private_key.my_ssh_key.private_key_pem
  filename        = "${path.module}/id_rsa"
  file_permission = "0600"
}
