terraform {
  required_providers {
    scaleway = {
      source="scaleway/scaleway"
    }
  }
}

provider "scaleway" {
  region = "fr-par"
  zone = "fr-par-2"
}
