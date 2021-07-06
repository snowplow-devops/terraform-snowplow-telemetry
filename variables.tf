variable "user_provided_id" {
  description = "Optional ID provided by user as an input to each terraform module. Intended to tie events together across modules, infrastructure and apps when used consistently."
  type        = string
}

variable "cloud" {
  description = "The cloud the services are running in."
  type        = string
}

variable "region" {
  description = "The region the services are running in."
  type        = string
}

variable "module_name" {
  description = "The name of the terraform module."
  type        = string
}

variable "module_version" {
  description = "The version of the terraform module (e.g. 1.0.0)."
  type        = string
}

variable "app_name" {
  description = "The name of the application."
  type        = string
}

variable "app_version" {
  description = "The version of the application (e.g. 1.0.0)."
  type        = string
}
