// google_project variables
variable "project_name" {
  type        = string
  description = "The display name of the GCP project."
}

variable "project_id" {
  type        = string
  description = "The GCP project ID Modifying will create a new project."
}

variable "org_id" {
  type        = string
  description = "Numeric ID of the GCP organisation this project belongs to. Only org_id or folder_id allowed. Modifying will create a new project."
  default     = null
}

variable "folder_id" {
  type        = string
  description = "Numeric ID of the folder this project belongs to. Only org_id or folder_id allowed. Modifying will create a new project."
  default     = null
}

variable "billing_account" {
  type        = string
  description = "Alphanumeric ID of the billing account this project belongs to."
}

variable "auto_create_network" {
  type        = string
  description = "Creates the default network is true, otherwise, it deletes it."
  default     = false
}

variable "env" {
  type        = string
  description = "The display name of the project"
}

// google_project_service variables
variable "apis" {
  type        = list(string)
  description = ""
  default     = []
}