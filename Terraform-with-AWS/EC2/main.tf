resource "aws_instance" "webserver" {
    ami = "ami"
    instance_type = "t2.micro"
    tags = {
        Name: "webserver"
        Description = "Nginx WebServer"
    }
    user_data = <<-EOF
                #!/bin/bash
                sudo apt update
                EOF
}

resource "aws_key_pair" "web" {
    public_key = file("path")

}