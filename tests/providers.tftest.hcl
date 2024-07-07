/*run "provider_validation" {
  assert {
    condition     = provider.aws.region == var.region
    error_message = "incorrect region for AWS provider"
  }
}*/