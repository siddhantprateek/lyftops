resource "linode_lke_cluster" "linode_kube" {
  label = "linode_kube"
  k8s_version = var.linode_lks_version
  region = var.linode_region
  tags = ["prod"]

  pool {
    type = var.linode_deploy_type
    count = 3

    autoscaler {
      min = 3
      max = 5
    }
  }
}