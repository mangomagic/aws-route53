domain = "example.com"
a_records = [
  {
    "ip" = "192.168.0.1"
    "name" = "@"
    "ttl" = 3600
    "uid" = "example_com_104890788"
  },
]
cname_records = [
  {
    "domain" = "@"
    "name" = "www"
    "ttl" = 43200
    "uid" = "www_345669174"
  },
]
mx_records = [
  {
    "domain" = "@"
    "hostname" = "mail.protonmail.ch"
    "priority" = 10
    "ttl" = 14400
    "uid" = "mail_protonmail_ch_113891855"
  },
  {
    "domain" = "@"
    "hostname" = "mailsec.protonmail.ch"
    "priority" = 20
    "ttl" = 14400
    "uid" = "mailsec_protonmail_ch_153755558"
  },
]
txt_records = [
  {
    "hostname" = "@"
    "ttl" = 300
    "txt" = "protonmail-verification=1234"
    "uid" = "protonmail_104591722"
  },
  {
    "hostname" = "_dmarc"
    "ttl" = 3600
    "txt" = "v=DMARC1; p=none"
    "uid" = "dmarc1_103892719"
  },
  {
    "hostname" = "@"
    "ttl" = 3600
    "txt" = "v=spf1 include:_spf.protonmail.ch mx ~all"
    "uid" = "spf1_145755603"
  },
]