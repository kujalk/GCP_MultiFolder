variable "Project-Root-ID" {
  type        = string
  description = "Project ID of the Root folder"
}

variable "Platform-Name" {
  type        = list(any)
  description = "Name of the Platform Folder"
}

variable "Level3-Folders" {
  type        = map(any)
  description = "Last level of folders"
}