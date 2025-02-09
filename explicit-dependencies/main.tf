resource "local_file" "whale" {
    filename = "/c/Users/Admin/Desktop/terraform/dependencies/whale"
    content = "whale"
    depends_on = [local_file.krill]
}

resource "local_file" "krill" {
    filename = "/c/Users/Admin/Desktop/terraform/dependencies/krill"
    content = "krill"
}