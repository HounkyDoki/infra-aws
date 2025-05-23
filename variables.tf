variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-3"
}

variable "key_name" {
  description = "Nom du key-pair AWS à utiliser pour SSH"
  type        = string
}

variable "your_ip_cidr" {
  description = "Ton IP source en /32 pour SSH"
  type        = string
}

variable "acm_certificate_arn" {
  description = "ARN du certificat SSL/TLS ACM"
  type        = string
}
