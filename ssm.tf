resource "aws_iam_instance_profile" "ssm_instance_profile" {
  count   = (var.enable_ssm ? 1 : 0)
  name = "ssm_instance_profile"
  role = aws_iam_role.ssm_role.id
}

resource "aws_iam_role" "ssm_role" {
  count   = (var.enable_ssm ? 1 : 0)
  name = "ssm_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ssm_policy_attachment" {
  count   = (var.enable_ssm ? 1 : 0)
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  role       = aws_iam_role.ssm_role.name
}