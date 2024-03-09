output "lks_dashboard_url" {
  value = linode_lke_cluster.linode_kube.dashboard_url
}

output "lks_api_endpoints" {
  value = linode_lke_cluster.linode_kube.api_endpoints
}