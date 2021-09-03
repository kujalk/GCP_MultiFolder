variable "PlatformName" {
  type        = string
  description = "PlatformName"
}

variable "ParentFolder" {
  type        = string
  description = "Parent Folder"
}

variable "Level1-FolderName" {
  type        = string
  description = "Level1 Folder"
}

variable "Level3-Folders" {
  type        = map(any)
  description = "Level3 Folder"
}

