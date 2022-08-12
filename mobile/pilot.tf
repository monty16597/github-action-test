terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.15.1"
    }
  }
}

provider "aws" {
  region                   = "us-east-1"
}

provider "aws" {
  alias                    = "eu_central_1"
  region                   = "eu-central-1"
}

provider "aws" {
  alias                    = "ap_southeast_2"
  region                   = "ap-southeast-2"
}

####################################################################################
####                                                                            ####
####  Please Note:                                                              ####
####  Terraform backend doesn't allow interpolations that is why following      ####
####  variables are hard-coded. To setup the infra in a completely new/separate ####
####  account, the developer would have to make a S3 Bucket manually and pass   ####
####  the bucket name in the following configuration.                           ####
####                                                                            ####
####################################################################################

