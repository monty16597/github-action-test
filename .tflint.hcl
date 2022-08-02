config {
  format = "compact"
  module = true
  force = false

}

plugin "aws" {
    enabled = true
    version = "0.15.0"
    source  = "github.com/terraform-linters/tflint-ruleset-aws"
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_comment_syntax.md
rule "terraform_comment_syntax" {
    enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_deprecated_index.md
rule "terraform_deprecated_index" {
    enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_deprecated_interpolation.md
rule "terraform_deprecated_interpolation" {
    enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_deprecated_interpolation.md
rule "terraform_deprecated_interpolation" {
    enabled = false
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_documented_outputs.md
rule "terraform_documented_outputs" {
    enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_documented_variables.md
rule "terraform_documented_variables" {
    enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_empty_list_equality.md
rule "terraform_empty_list_equality" {
    enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_module_pinned_source.md
rule "terraform_module_pinned_source" {
  enabled = true
  style = "semver"
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_module_version.md
rule "terraform_module_version" {
  enabled = true
  exact = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_naming_convention.md
rule "terraform_naming_convention" {
  enabled = true
  format = "snake_case"
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_required_providers.md
rule "terraform_required_providers" {
  enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_required_version.md
rule "terraform_required_version" {
  enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_typed_variables.md
rule "terraform_typed_variables" {
  enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_unused_declarations.md
rule "terraform_unused_declarations" {
  enabled = true
}

# https://github.com/terraform-linters/tflint/blob/master/docs/rules/terraform_unused_required_providers.md
rule "terraform_unused_required_providers" {
  enabled = true
}

# https://github.com/terraform-linters/tflint-ruleset-aws/blob/master/docs/rules/aws_resource_missing_tags.md
rule "aws_resource_missing_tags" {
  enabled = true
  tags = ["Creator", "Owner", "Environment", "Product", "Terraform", "Purpose" ]
}

# https://github.com/terraform-linters/tflint-ruleset-aws/blob/master/docs/rules/aws_s3_bucket_name.md
rule "aws_s3_bucket_name" {
  enabled = true
  regex = "^(prod||stage)-[a-z-0-9]+-v[0-9]+$"
}
