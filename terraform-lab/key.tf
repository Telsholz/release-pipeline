resource "aws_key_pair" "kubeadm-keypair" {
 key_name = "kubeadm-keypair"
 public_key = file(var.PATH_TO_PUBLIC_KEY)
}

