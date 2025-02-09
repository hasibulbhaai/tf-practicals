resource "local_file" "petname" {
    filename = each.value
    #for_each = var.filename
    for_each = toset(var.filename)

}



