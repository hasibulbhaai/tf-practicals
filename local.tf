resource "local_file" "pet" {
    filename = "~/pets.txt"
    content = "testing local file resource"
    file_permission = "0700"
}

# resource "local_file" "games" {
#   file     = "/root/favorite-games"
#   content  = "FIFA 21"
# }


# resource "local_sensitive_file" "games" {
#   filename     = "/root/favorite-games"
#   content  = "FIFA 21"
#   sensitive_content = "FIFA 21"
# }


# resource "local_sensitive_file" "games" {
#   filename     = "/root/favorite-games"
#   content  = "FIFA 21"
#   content_base64 = "FIFA 21"
# }