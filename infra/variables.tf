variable "stack_name" {
  description = "Name of the stack, used to prefix all resources"
  default     = "deft-app"
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default = {
    "Environment" = "dev"
    "ManagedBy"   = "Terraform"
    "Name"        = "deft-app"
    "Repository"  = "https://github.com/deft1991/ASWHelloWorld"
  }
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  default     = "10.0.0.0/16"
  type        = string
}

variable "azs" {
  description = "A list of availability zones in the region"
  default     = ["us-east-2a"]
  type        = list(string)
}

variable "cloudflare_email" {
  type        = string
  description = "Cloudflare email address."
}

variable "cloudflare_api_token" {
  type        = string
  description = "Cloudflare api token."
}
