
output "kubeconfig_output" {
  value = azurerm_kubernetes_cluster.infra.kube_config_raw
  sensitive=true
  
}


output "kube_config" {
  value = azurerm_kubernetes_cluster.infra.kube_config_raw
  sensitive=true
  
}