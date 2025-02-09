resource "local_sensitive_file" "name" {
    filename = "/root/user-data"
    content = "password: S3cr3tP@ssw0rd"
    count = 3

}

# Using Variable
resource "local_sensitive_file" "name" {
    filename = var.users[count.index]
    content = var.content
    count = length(var.users)

}

#using for Each

resource "local_sensitive_file" "name" {
    filename = each.value
    for_each = toset(var.users)
    content = var.content

}
