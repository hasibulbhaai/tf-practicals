resource "local_file" "things-to-do" {
  filename     = "/c/users/Admin/Desktop/terraform/things-to-do.txt"
  content  = "Clean my room before Christmas\nComplete the CKA Certification!"
}
resource "local_file" "more-things-to-do" {
  filename     = "/c/users/Admin/Desktop/terraform/more-things-to-do.txt"
  content  = "Learn how to play Astronomia on the guitar!"
}