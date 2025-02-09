 resource "time_static" "time_update" {
}

resource "local_file" "time" {
    filename = "/c/Users/Admin/Desktop/terraform/chronos/time.txt"
    content = time_static.time_update.rfc3339

}