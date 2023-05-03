terraform {
  required_version = ">= 1.3"

  # Utilizando o provedor da Google Cloud Platform 
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.63.1"
    }
  }
}
