# Replicating the exact finding from image_eaaa20.png
resource "aws_ecr_repository" "dotfile_ignored_existing_dir" {
  name                 = "sukidarake-dotfile-ignored-existing-dir"
  image_tag_mutability = "MUTABLE" # This triggers CRS-001
}