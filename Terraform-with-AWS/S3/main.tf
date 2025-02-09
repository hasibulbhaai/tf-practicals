resource "aws_s3_bucket" "finance" {
    bucket = "finance-12345"
    tags = {
      Description = "Finance and Payroll"
    }

}

resource "aws_s3_bucket_object" "finance" {
    content = "/root/finance/finance-2021.doc"
    key = "finance-2021.doc"
    bucket = aws_s3_bucket.finance

}

data "aws_iam_group" "finance-data" {
    group_name = "finance-analysts"
}

resource "aws_s3_bucket_policy" "finance-policy" {
    bucket = aws_s3_bucket.finance.id
    policy =  <<EOF
    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Effect": "Allow",
                "Action": "*",
                "Resource": "arn:aws:s3:::${aws_s3_bucket.finance.id}/*",
                "Principal": {
                    "AWS": [
                        "${data.aws_iam_group.finance-data.arn}"
                    ]
                }
            }
        ]

    }
    EOF
}