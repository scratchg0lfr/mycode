terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker" //this is the source
      version = "~> 2.22.0"
    }
  }
}

data "http" "astronauts" {
  url = "http://api.open-notify.org/astros.json"      // API to send HTTP GET to
}

provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true    // keep image after "destroy"
}

resource "docker_container" "nginx" {
  for_each = {for idx, astronaut in jsondecode(data.http.astronauts.body).people : idx => astronaut }
  image = docker_image.nginx.image_id
  name  = "astronaut-${replace(each.value.name," ","-")}"
}
