# produces an output value named "container_id"
# this is the UUID terraform uses internally to track this resource
output "container_id" {
  description = "ID of the Docker container"
  value       = docker_container.nginx.id
}
# produces an output value named "image_id"
# this is the docker image identifier
output "image_id" {
  description = "ID of the Docker image"
  value       = docker_image.nginx.image_id
}
# produces an output value named "the_chad"
# this is the docker image identifier
output "the_chad" {
  description = "the_chad"
  value       = docker_image.nginx.keep_locally
}

