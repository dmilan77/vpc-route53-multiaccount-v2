resource "aws_route53_record" "hub-record" {
  zone_id = aws_route53_zone.zone-hub-private.zone_id
  name    = "myec2"
  type    = "A"
  ttl     = "300"
  records = ["10.0.0.4"]
}