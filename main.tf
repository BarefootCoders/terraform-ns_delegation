resource "aws_route53_record" "ns_delegation" {
  zone_id = "${var.parent_zone_id}"
  name = "${var.subdomain}"
  type = "NS"
  ttl = 600

  records = ["${var.target_zone_nameservers}"]
}
