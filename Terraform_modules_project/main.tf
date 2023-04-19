module "web" {
    source = "./start_up_module_web"
    web_domain_name = var.my_domain_name
    web_sub_domain_name = var.my_web_sub_domain_name
    key_name = var.my_key_name
    local_aws_private_key_path = var.my_local_aws_private_key_path
    
}

module "mail" {
    source = "./start_up_module_mail"
    mail_domain_name = var.my_domain_name
    mail_sub_domain_name = var.my_mail_sub_domain_name
    key_name = var.my_key_name
    local_aws_private_key_path = var.my_local_aws_private_key_path
  
}

module "gitlab" {
    source = "./start_up_module_gitlab"
    gitlab_domain_name = var.my_domain_name
    gitlab_sub_domain_name = var.my_gitlab_sub_domain_name
    key_name = var.my_key_name
    local_aws_private_key_path = var.my_local_aws_private_key_path
  
}

module "db" {
    source = "./start_up_module_db"
    db_domain_name = var.my_domain_name
    db_sub_domain_name = var.my_db_sub_domain_name
    key_name = var.my_key_name
    local_aws_private_key_path = var.my_local_aws_private_key_path
  
}

module "artifactory" {
    source = "./start_up_module_artifactory"
    artifactory_domain_name = var.my_domain_name
    artifactory_sub_domain_name = var.my_artifactory_sub_domain_name
    key_name = var.my_key_name
    local_aws_private_key_path = var.my_local_aws_private_key_path

}