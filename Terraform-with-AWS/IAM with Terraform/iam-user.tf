resource "aws_iam_user" "users" {
    name = "mary"
}


#Using variable

resource "aws_iam_user" "users" {
    name = var.project-sapphire-users[count.index]
    count = length(var.project-sapphire-users)
}