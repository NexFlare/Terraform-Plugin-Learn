terraform {
  required_providers {
    hashicups = {
      source = "hashicorp.com/edu/hashicups"
    }
  }
}

provider "hashicups" {
    password = "test123"
    username = "education"
    host = "http://localhost:19090"
}

data "hashicups_coffees" "edu" {}

output "edu_coffees" {
    value = data.hashicups_coffees.edu
}