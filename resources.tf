resource "digitalocean_droplet" "master" {
  image = "ubuntu-14-04-x64"
  name = "k8s-master"
  region = "${var.region}"
  size = "4gb"
  private_networking = true
  ssh_keys = [
    "${var.ssh_fingerprint}"
  ]

  connection {
    user = "root"
    type = "ssh"
    key_file = "${var.private_key}"
    timeout = "2m"
  }
}
