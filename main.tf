resource "aws_s3_bucket" "s3_bucket_private_repo" {
  bucket    = "abc"
 }
 module "private_git_module" {
   source   = "git@github.com:rbenavente/private-module.git"
 }
