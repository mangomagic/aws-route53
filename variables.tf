variable "domain" {
  description = "DNS domain e.g. example.com"
  type        = string
}

variable "a_records" {
  type = list(object({
    uid  = string
    name = string
    ip   = string
    ttl  = optional(number, 3600)
  }))
  default = []
}

variable "cname_records" {
  type = list(object({
    uid    = string
    name   = string
    domain = string
    ttl    = optional(number, 43200)
  }))
  default = []
}

variable "mx_records" {
  type = list(object({
    uid      = string
    domain   = optional(string, "@")
    hostname = string
    priority = number
    ttl      = optional(number, 1800)
  }))
  default = []
}

variable "txt_records" {
  type = list(object({
    uid      = string
    hostname = optional(string, "@")
    txt      = string
    ttl      = optional(number, 3600)
  }))
  default = []
}
