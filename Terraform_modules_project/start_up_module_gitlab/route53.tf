data "aws_route53_zone" "hosted_zone" {
  name = var.gitlab_domain_name
}

resource "aws_route53_record" "gitlab" {
  zone_id = data.aws_route53_zone.hosted_zone.zone_id
  name    = var.gitlab_sub_domain_name
  type    = "A"
  ttl     = 300
  records = [aws_instance.gitlab_server[0].public_ip]
}