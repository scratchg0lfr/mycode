variable "container_name" {
  description = "Value of the name for the Docker container"
  # basic types include string, number and bool
  type        = string
  default     = "ExampleNginxContainer"
}
variable "intport" {
  description = "Value of the internal docker port"
  # basic types include string, number and bool
  type        = string
  default     = "80"
}
variable "extport" {
  description = "Value of the external docker port"
  # basic types include string, number and bool
  type        = string
  default     = "8000"
}

