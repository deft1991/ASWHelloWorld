# Setup dns in CloudFlare for the domain deft.com , ip from aws_instance.web.public_ip

data "cloudflare_zone" "deft" {
  name = "deft.xyz"
}

# Use terraform plan -var "cloudflare_email=$EMAIL" -var "cloudflare_api_token=$API_TOKEN" to run this
resource "cloudflare_record" "java_web" {
  zone_id = data.cloudflare_zone.deft.id
  name    = "@"
  value   = aws_instance.web.public_ip
  type    = "A"
  ttl     = "300"
  proxied = true

  comment = "Pointing to ec2 instance. Managed by Terraform."
}
