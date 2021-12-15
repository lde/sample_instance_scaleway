resource "scaleway_instance_server" "instance" {
  count = local.number_of_instances
  image = "56b594d3-7623-49a5-94ca-492c625cfa79"
  type  = "GP1-S"
  ip_id = local.ip_list[count.index]
}

locals {
  number_of_instances=2
  raw_ip_list=tolist(scaleway_instance_ip.eip.*.id)
  ip_list=var.reverse_order?reverse(local.raw_ip_list):local.raw_ip_list
}
