resource "aws_iam_instance_profile" "fargate_mgr_instance_profile" {
  name = "fargate_mgr_profile"
  role = "${aws_iam_role.fargate_mgr_role.name}"
}

resource "aws_iam_role" "fargate_mgr_role" {
  name = "fargate_gitlab_manager"
  path = "/"

  assume_role_policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}

resource "aws_iam_role_policy_attachment" "ssm-attach" {
  role       = "${aws_iam_role.fargate_mgr_role.name}"
  policy_arn = "${data.aws_iam_policy.ssm_role_policy.arn}"
}

resource "aws_iam_role_policy_attachment" "ecs_full_access" {
  role       = "${aws_iam_role.fargate_mgr_role.name}"
  policy_arn = "${data.aws_iam_policy.ecs_full_access.arn}"
}