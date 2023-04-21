resource "aws_route53_zone" "ssinikki_aws" {
    name    = "ssinikki.com"

     tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "www" {
    zone_id = aws_route53_zone.ssinikki_aws.zone_id
    name    = "www.ssinikki.com"
    type    = "A"
    ttl     = "300"
    records = [aws_instance.my_instance.public_ip]
}