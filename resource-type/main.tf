# resource "local_file" "newfile" {
#     filename = var.filename
#     content = "newfile contains ${random_file.my-file}"
# }

# resource "random_pet" "my-file" {
#     prefix = var.prefix
#     separator = var.separator
#     length = var.length
# }
 resource "time_static" "time_update" {
}

resource "local_file" "time" {
    filename = "root/time.txt"
    content = "Time stamp of this file is ${time_static.time_update.id}"
}

#    1  terraform init
#     2  cd terraform-projects/project-chronos/
#     3  terraform init
#     4  terraform apply
#     5  ls /root
#     6  terraform apply
#     7  ls -ltr
#     8  cd root/
#     9  ls -ltr
#    10  cd ..
#    11  terrafrom init
#    12  terraform init
#    13  terrafrom init -upgrade
#    14  terraform init -upgrade
#    15  terraform apply
#    16  terraform plan
#    17  ls /root/
#    18  cat /root/time.txt
#    19  terraform show
#    20  history

