variable "project_id" {
  description = "The ID of the project in which to provision resources."
  type        = string
  default     = "neustar-287611"
}

variable "name" {
  description = "Name of the buckets to create."
  type        = string
  default     = "neustar_main_bucket"
}
