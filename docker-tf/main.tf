#lets make some comments
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker" //this is the source
      version = "~> 2.22.0"
    }
  }
}
/*this is a multi
line comment 
field
*/
provider "docker" {}

resource "docker_image" "nginx" {
  name         = "nginx:1.19.6"
  keep_locally = true    // keep image after "destroy"
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "tutorial"
  ports {
    internal = 80
    external = 2224
  }
}

