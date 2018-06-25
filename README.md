# arc1

This project was presented as a challenge mission from Arctiq. The goal is to provision a 3 tier web app (vm or container) in Google Cloud using terraform/ansible. This document will explain how to get set up to use this code.

Getting Started

First - Install Terraform, binaries available for Win,Mac and Linux here https://www.terraform.io/downloads.html and instructions on setting it up here https://www.terraform.io/docs/index.html

Next - Pull this GIT project

Next - Switch to the project directory

Next - Create your Google Cloud account and Service Account API as a json file. This account will need Compute Instance Admin and Service Account User roles. Save this to the GIT Project directory. 

Next - modify arc-glcloud.tf Edit credentials line - change YOUR_JSON to the json credential file you downloaded in the previous step

Next - Run terraform init to initialize the terraform project

Next - Run terraform plan - this will make sure everything is OK to build

Next - Run terraform apply - this will actually build the VM instances. 

06-24-18: 

Current state can deploy 3 VM instances in Google Cloud using terraform on Debian. Next steps, swap out Debian for CentOS because I prefer that and start defining the ansible code needed to apply necessary configs. 