resource "aws_organizations_organization" "default" {
  feature_set                   = "ALL"
  aws_service_access_principals = ["sso.amazonaws.com"]
  enabled_policy_types          = ["AISERVICES_OPT_OUT_POLICY"]
}
