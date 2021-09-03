variable "Project-Root-ID" {
  type        = string
  description = "Project ID of the Root folder"
}

variable "Platform-Name" {
  type        = string
  description = "Name of the Platform Folder"
}

variable "Level1-Folders" {
  type        = list(any)
  default     = ["Level1", "Level2", "Level3"]
  description = "Level 1 folders"
}

variable "Level3-Folders" {
  type        = map(any)
  description = "Last level of folders"
}