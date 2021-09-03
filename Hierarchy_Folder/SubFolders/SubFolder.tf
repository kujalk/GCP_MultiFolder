resource "google_folder" "Level1-Folder" {
  display_name = var.Level1-FolderName
  parent       = var.ParentFolder
}

resource "google_folder" "Level2-Folder-NonProd" {
  display_name = "NonProd"
  parent       = google_folder.Level1-Folder.name
}

resource "google_folder" "Level2-Folder-Prod" {
  display_name = "Prod"
  parent       = google_folder.Level1-Folder.name
}

resource "google_folder" "Level2-Folder-Wakanda" {
  display_name = "Wakanda"
  parent       = google_folder.Level1-Folder.name
}

resource "google_folder" "Level3-Folder-NonProd" {
  count        = length(lookup(var.Level3-Folders, var.PlatformName))
  display_name = element(lookup(var.Level3-Folders, var.PlatformName), count.index)
  parent       = google_folder.Level2-Folder-NonProd.name
}

resource "google_folder" "Level3-Folder-Prod" {
  count        = length(lookup(var.Level3-Folders, var.PlatformName))
  display_name = element(lookup(var.Level3-Folders, var.PlatformName), count.index)
  parent       = google_folder.Level2-Folder-Prod.name
}

resource "google_folder" "Level3-Folder-Wakanda" {
  count        = length(lookup(var.Level3-Folders, var.PlatformName))
  display_name = element(lookup(var.Level3-Folders, var.PlatformName), count.index)
  parent       = google_folder.Level2-Folder-Wakanda.name
}