resource "scaleway_instance_ip" "eip" {
  count = local.number_of_instances
}
