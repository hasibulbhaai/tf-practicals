resource "local_file" "xbox" {
    filename = "/c/users/Admin/Desktop/terraform/xbox.txt"
    content = "Wouldn't mind an XBox either!"
}

resource "local_file" "ps5" {
  filename     = "/root/ps5.txt"
  content  = "And a PS5!"
}


resource "local_file" "cyberpunk" {
  filename     = "/c/users/Admin/Desktop/terraform/cyberpunk2077.txt"
  content  = "All I need for Christmas is Cyberpunk 2077!"
}
