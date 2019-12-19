variable "project" {
  description = "GCP project name"
  default     = "tomh-lab-1000"
}

variable "vpc" {
  description = "name of virtual network"
}

variable "instance_name" {
  description = "GCE instance name"
}

variable "machine_type" {
  description = "size of GCE machine"
  default     = "n1-standard-1"
}

variable "zone" {
  description = "GCP zone"
  default     = "europe-west2-c"
}

variable "region" {
  description = "GCP region"
  default     = "europe-west2"
}

variable "boot_image" {
  description = "GCE image to use"
  default     = "nginx-webserver"
}

