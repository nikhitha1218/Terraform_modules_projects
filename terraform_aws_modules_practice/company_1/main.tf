module "company_1" {
  source = "..//startup_module_ec2"
  want_web = true
  want_mail = true  
  mail_count = var.my_mail_count
  web_count = var.my_web_count
}
