variable "linode_token" {
  description = "linode config token"
  type = string 
  sensitive = true 
}

variable "linode_region" {
  description = "Linode default region for operations."
  type = string
  default = "ap-south" // 23 - ap-south
}

variable "linode_deploy_type" {
  description = "Default Type of Linode to deploy"
  type = string
  default = "g6-nanode-1" // 1 - g6-nanode-1
}

variable "linode_lks_version" {
  description = "Default Linode Kubernetes service version"
  type = string
  default = "1.28" // 1.28 / 1.27 available
}