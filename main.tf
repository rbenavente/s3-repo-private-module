variable "acl" {
  type    = "string"
  defautl = "public-read"
}
resource "aws_s3_bucket" "s3_bucket_private_repo" {
  bucket    = "abc"
  acl       = var.acl
 }
 module "private_git_module" {
   source   = "git@github.com:rbenavente/private-module.git"
 }
