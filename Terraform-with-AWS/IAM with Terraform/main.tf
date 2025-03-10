resource "aws_iam_user" "admin-user" {
    name = "lucy"
    tags = {
      Description: "technical Team leader"
    }

}
 resource "aws_iam_policy" "adminUser" {
    name = "AdminUsers"
    policy = <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "*"
            }
        ]

    }
    EOF
}

resource "aws_iam_user_policy_attachment" "lucy-admin-access" {
    user = aws_iam_user.admin-user
    policy_arn = aws_iam_policy.adminUser

}