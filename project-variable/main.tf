resource "local_file" "jedi" {
     filename = var.jedi.filename
     content = var.jedi.content
}

# terraform apply -var filename=/root/tennis.txt
# Terraform follows a variable definition precedence order to determine the value and the command line flag of –var or –var-file takes the highest priority.