resource "aws_security_group" "kubeadm-sg" {
  name = "kubeadm-sg"
  description = "security group that allows traffic for kubeadm cluster"
  egress {
  from_port = 0
  to_port = 0
  protocol = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 22
  to_port = 22
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 30000
  to_port = 32767
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 6443
  to_port = 6443
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 2379
  to_port = 2380
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 6782
  to_port = 6784
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 10250
  to_port = 10255
  protocol = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
  from_port = 6782
  to_port = 6784
  protocol = "udp"
  cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
  Name = "kubeadm-sg"
  }
}

