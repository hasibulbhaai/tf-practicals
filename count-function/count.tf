resource "local_file" "petname" {
    #filename = var.filename
    # or
    filename = var.filename[count.index]
    # count = 3 # explicit count as declared integer in count
    count = length(var.filename) # explicit count as declared number of list in variable file

}