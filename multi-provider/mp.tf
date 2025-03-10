
resource "local_file" "pet_name" {
	    content = "We love pets!"
	    filename = "/root/pets.txt"
}


resource "random_pet" "my-pet" {
	      prefix = "Mrs"
	      separator = "."
	      length = "1"
}

# resource "local_file" "things-to-do" {
#   filename     = "/root/things-to-do.txt"
#   content  = "Clean my room before Christmas\nComplete the CKA Certification!"
# }
# resource "local_file" "more-things-to-do" {
#   filename     = "/root/more-things-to-do.txt"
#   content  = "Learn how to play Astronomia on the guitar!"
# }