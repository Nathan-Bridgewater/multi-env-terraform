variable "project" {
  description = "GCP Project ID"
}

variable "environment" {
  description = "Deplyoment environment"
}

variable "region" {
  description = "Region for resources"
}

variable "vpc_name" {
  description = "Name of the VPC"
}

variable "cidr_range" {
  description = "Subnet CIDR range"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "machine_type" {
  description = "Machine type of the Apache web server"
}

