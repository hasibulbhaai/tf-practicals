resource "local_file" "state" {
    filename = "/root/${var.local-state}"
    content = "This configuration uses ${var.local-state} state"

}


#Remote State
resource "local_file" "state" {
    filename = "/root/${var.remote-state}"
    content = "This configuration uses ${var.remote-state} state"

}