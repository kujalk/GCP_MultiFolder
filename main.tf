module "Top-Folder" {
  count           = length(var.Platform-Name)
  source          = "./Hierarchy_Folder"
  Project-Root-ID = var.Project-Root-ID
  Platform-Name   = var.Platform-Name[count.index]
  Level3-Folders  = var.Level3-Folders
}