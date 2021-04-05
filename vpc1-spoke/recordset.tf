resource "aws_route53_record" "spoke1-record" {
  zone_id = aws_route53_zone.zone-spoke1-private.zone_id
  name    = "myec2"
  type    = "A"
  ttl     = "300"
  records = ["10.1.0.4"]
}