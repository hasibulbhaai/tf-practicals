resource "local_sensitive_file" "name" {
    filename = each.value
    content = var.content
    for_each = toset(var.users)

}

resource "local_sensitive_file" "name" {
    filename = "/root/user-data"
    content = "password: S3cr3tP@ssw0rd"
    count = 3

}