resource "aws_route53_zone" "main" {
  name = var.domain
}

resource "aws_route53_record" "a" {
  for_each = local.a_records
  zone_id  = aws_route53_zone.main.zone_id
  type     = "A"
  name     = each.key
  records  = each.value.records
  ttl      = each.value.ttl
}

resource "aws_route53_record" "cname" {
  for_each = local.cname_records
  zone_id  = aws_route53_zone.main.zone_id
  type     = "CNAME"
  name     = each.value.name
  records  = each.value.records
  ttl      = each.value.ttl
}

resource "aws_route53_record" "mx" {
  for_each = local.mx_records
  zone_id  = aws_route53_zone.main.zone_id
  type     = "MX"
  name     = each.key
  records  = each.value.records
  ttl      = each.value.ttl
}

resource "aws_route53_record" "txt" {
  for_each = local.txt_records
  zone_id  = aws_route53_zone.main.zone_id
  type     = "TXT"
  name     = each.key
  records  = each.value.records
  ttl      = each.value.ttl
}
