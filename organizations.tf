resource "aws_organizations_organization" "default" {
  feature_set                   = "ALL"
  aws_service_access_principals = ["sso.amazonaws.com"]
  enabled_policy_types          = ["AISERVICES_OPT_OUT_POLICY"]
}

resource "aws_organizations_account" "default" {
  name  = "s6n.jp"
  email = "me@s6n.jp"
}

resource "aws_organizations_account" "isucon14" {
  name  = "isucon14"
  email = "aws+isucon14@s6n.jp"
}
