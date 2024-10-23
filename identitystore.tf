resource "aws_identitystore_user" "siketyan" {
  identity_store_id = data.aws_ssoadmin_instances.default.identity_store_ids[0]
  user_name         = "me@s6n.jp"
  display_name      = "Natsuki Ikeguchi"

  name {
    given_name  = "Natsuki"
    family_name = "Ikeguchi"
  }

  emails {
    type    = "work"
    value   = "me@s6n.jp"
    primary = true
  }
}
