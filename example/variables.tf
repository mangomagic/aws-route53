variable "domain" {
  type = string
}

variable "a_records" {
  type = list(object({
    uid  = string
    name = string
    ip   = string
    ttl  = optional(number, 3600)
  }))
}

variable "cname_records" {
  type = list(object({
    uid    = string
    name   = string
    domain = string
    ttl    = optional(number, 43200)
  }))
}

variable "mx_records" {
  type = list(object({
    uid      = string
    domain   = optional(string, "@")
    hostname = string
    priority = number
    ttl      = optional(number, 1800)
  }))
}

variable "txt_records" {
  type = list(object({
    uid      = string
    hostname = optional(string, "@")
    txt      = string
    ttl      = optional(number, 3600)
  }))
}

variable "aws_access_key" {
  type    = string
  default = ""
}

variable "aws_secret_key" {
  type    = string
  default = ""
}
