resource "helm_release" "ingress_nginx" {
 # count    =var.cert_and_ingress ? 1 : 0
  name       = "ingress-nginx-controller"
  repository = "https://kubernetes.github.io/ingress-nginx"
  chart      = "ingress-nginx"
  version    = "4.0.6"

  namespace        = "ingress-basic"
  create_namespace = true

  values = [file("nginx_ingress_values.yaml")]


  set {
    name  = "controller.service.loadBalancerIP"
    value =  var.public_ip
   }


}


resource "helm_release" "cert_manager" {

  #count    =var.cert_and_ingress ? 1 : 0
  name       = "cert-manager"
  repository = "https://charts.jetstack.io"
  chart      = "cert-manager"
  version    = "v1.7.1"
  namespace  = "ingress-basic"

  set {
    name  = "installCRDs"
    value = "true"
  }

}