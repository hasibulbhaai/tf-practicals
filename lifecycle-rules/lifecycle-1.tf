resource "local_file" "new" {
    filename = "/c/Users/Admin/Desktop/terraform/new.file"
    content = "lifecycle example file"
    file_permission = "0700"

    lifecycle {
      prevent_destroy = true
    }

}


resource "local_file" "file" {
    filename = var.filename
    file_permission =  var.permission
    content = random_string.string.id

}

resource "random_string" "string" {
    length = var.length
    keepers = {
        length = var.length
    }

}


########################################################
resource "local_file" "file" {
    filename = var.filename
    file_permission =  var.permission
    content = random_string.string.id
}

resource "random_string" "string" {
    length = var.length
    keepers = {
        length = var.length
    }
    lifecycle {
      create_before_destroy = true
    }
}

########################################################

resource "local_file" "file" {
    filename = var.filename
    file_permission =  var.permission
    content = "This is a random string - ${random_string.string.id}"
    lifecycle {
      create_before_destroy = true
    }


}

resource "random_string" "string" {
    length = var.length
    keepers = {
        length = var.length
    }
    lifecycle {
        create_before_destroy =  true
    }

}

