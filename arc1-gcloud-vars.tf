############################
# Google Account Variables #
############################

# GCloud account json - Generate in API section of GCloud account. 
variable "gcaccount" {
  default = "API_CRENTIALS_JSON"
} 

# GCloud project name
variable "gcproject" {
  default = "GCLOUD_PROJECT_ID"
}

variable "gcregion" {
  default = "PROJECT_REGION"
}