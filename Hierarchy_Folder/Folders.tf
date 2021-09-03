resource "google_folder" "Root" {
  display_name = var.Platform-Name
  parent       = "folders/${var.Project-Root-ID}"
}

module "Sub-Folder" {
  count             = length(var.Level1-Folders)
  source            = "./SubFolders"
  ParentFolder      = google_folder.Root.name
  Level1-FolderName = var.Level1-Folders[count.index]
  PlatformName      = var.Platform-Name
  Level3-Folders    = var.Level3-Folders
}