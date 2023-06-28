variable "region" {
  description = "Region"
  type        = string
  default     = "eu-central-1"
}

variable "availability_zone" {
  description = "Availability Zone"
  type        = string
  default     = "eu-central-1a"
}

variable "vpc_id" {
  description = "VPC id"
  type        = string
  default     = "vpc-0fb118c8e32fd28fc"
}

variable "subnet_id" {
  description = "Subnet ID of VPC"
  type        = string
  default     = "subnet-0340cd3625973aa12"
}

variable "aliases" {
  type        = list
  description = "Aliases"
  default     = ["prod.rmsca.syngentaaws.org"]
}

variable "subnet_ids" {
  description = "Subnet Ids"
  type        = list
  default     = ["subnet-0340cd3625973aa12", "subnet-07468c6f8bc2fceb8"]
}


variable "security_group_ids" {
    type        = list(string)
    description = "List of Security Group Ids"
    default     = ["sg-09b12b20050d8dd7b"]
}

variable "resource_name" {
  description = "Resource Name"
  type        = string
  default     = "floweringapp-prod-ecsfargate-ecs-cluster"
}

variable "business_function" {
    type        = string
    description = "Business Function"
    default     = "Corporate Data + Analytics"
}
variable "platform" {
    type        = string
    description = "Platform"
    default     = "Linux"
}
variable "cost_center" {
    type        = string
    description = "Cost Center"
    default     = "FR13FXP501"
}
variable "application" {
    type        = string
    description = "Application Name"
    default     = "floweringapp"
}

variable "application_code" {
  type        = string
  description = "Application Code"
  default     = "FLO"
}

variable "owner_email" {
    type        = string
    description = "Owner Email Address"
    default     = "carole.capdeville@syngenta.com"
}
variable "contact_email" {
    type        = string
    description = "Contact Email Address"
    default     = "dominique.pothin@syngenta.com"
}
variable "environment" {
    type        = string
    description = "Environment Name"
    default     = "Production"
}

variable "purpose" {
    type        = string
    description = "Purpose Tag"
    default     = "fields flowering evolution visualization"
}

variable "created_by_email" {
    type        = string
    description = "Resource created by"
    default     = "komal.walanj@syngenta.com"
}

variable "ssl_cert_arn" {
    type        = string
    description = "ACM cert arn"
    default     = "arn:aws:acm:eu-central-1:769453588195:certificate/fb294229-63ac-4b89-b3ed-93e9c63f8408"
}

variable "http_tcp_listeners" {
  description = "A list of maps describing the HTTP listeners or TCP ports for this ALB. Required key/values: port, protocol. Optional key/values: target_group_index (defaults to http_tcp_listeners[count.index])"
  type        = any
  default     = "TLS-443"
}

variable "ip_address_type" {
  description = "The type of IP addresses used by the subnets for your load balancer. The possible values are ipv4 and dualstack."
  type        = string
  default     = "ipv4"
}

variable "internal" {
  description = "Boolean determining if the load balancer is internal or externally facing."
  type        =  string
  default     = "int-nlb-tg-8501"
}

variable "load_balancer_create_timeout" {
  description = "Timeout value when creating the ALB."
  type        = string
  default     = "10m"
}

variable "create_repository" {
  description = "Determines whether a repository will be created"
  type        = bool
  default     = true
}

variable "repository_name" {
  description = "The name of the repository"
  type        = string
  default     = "769453588195.dkr.ecr.eu-central-1.amazonaws.com/floweringapp-prod-ecr"
}

variable "repository_image_tag_mutability" {
  description = "The tag mutability setting for the repository. Must be one of: `MUTABLE` or `IMMUTABLE`. Defaults to `IMMUTABLE`"
  type        = string
  default     = "IMMUTABLE"
}

variable "repository_encryption_type" {
  description = "The encryption type for the repository. Must be one of: `KMS` or `AES256`. Defaults to `AES256`"
  type        = string
  default     = "AES256"
}

variable "repository_kms_key" {
  description = "The ARN of the KMS key to use when encryption_type is `KMS`. If not specified, uses the default AWS managed key for ECR"
  type        = string
  default     = null
}

variable "repository_image_scan_on_push" {
  description = "Indicates whether images are scanned after being pushed to the repository (`true`) or not scanned (`false`)"
  type        = bool
  default     = true
}

variable "create_lifecycle_policy" {
  description = "Determines whether a lifecycle policy will be created"
  type        = bool
  default     = false
}

variable "ecr_repository_name" {
  description = "repository name assigned to ECR"
  type        = string
  default     = "floweringapp-prod-ecr"
}

variable "aws_caller_identity" {
  description = "caller ID for ECR"
  type        = string
  default     = "769453588195"
}
