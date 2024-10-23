data "aws_ssoadmin_instances" "default" {}

resource "aws_ssoadmin_permission_set" "admin" {
  instance_arn = data.aws_ssoadmin_instances.default.arns[0]
  name         = "AdministratorAccessPermissionSet"
}

resource "aws_ssoadmin_managed_policy_attachment" "admin" {
  instance_arn       = data.aws_ssoadmin_instances.default.arns[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
  managed_policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

resource "aws_ssoadmin_account_assignment" "siketyan_admin" {
  instance_arn       = data.aws_ssoadmin_instances.default.arns[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
  principal_id       = aws_identitystore_user.siketyan.user_id
  principal_type     = "USER"
  target_id          = aws_organizations_account.default.id
  target_type        = "AWS_ACCOUNT"
}

resource "aws_ssoadmin_account_assignment" "isucon14_admin" {
  instance_arn       = data.aws_ssoadmin_instances.default.arns[0]
  permission_set_arn = aws_ssoadmin_permission_set.admin.arn
  principal_id       = aws_identitystore_user.siketyan.user_id
  principal_type     = "USER"
  target_id          = aws_organizations_account.isucon14.id
  target_type        = "AWS_ACCOUNT"
}
