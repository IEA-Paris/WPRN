terraform {
  source = "../../../../modules//app"
}

include {
  path = find_in_parent_folders()
}

inputs = fileexists("${get_terragrunt_dir()}/env.json") ? jsondecode(file("${get_terragrunt_dir()}/env.json")).tfvars : tomap({})
