resource "local_file" "my-pet" {
    filename = "/root/pet-name"
    content = "My pet name is finnegan!!"
}

resource "random_pet" "other-pet" {
    prefix = "Mr"
    separator = "."
    length = "1"
}