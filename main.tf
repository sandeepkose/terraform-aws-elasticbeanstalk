provider "aws" {
  region  = var.region
  access_key = ""
  secret_key = ""

}


module "eb" {

  source = "github.com/sandeepkose/terraform-aws-elasticbeanstalk/modules/beanstalk/"
  
  
  app_tags                          = var.app_tags
  application_name                  = var.application_name
  vpc_id                            = var.vpc_id
  ec2_subnets                       = var.ec2_subnets
  elb_subnets                       = var.elb_subnets
  instance_type                     = var.instance_type
  disk_size                         = var.disk_size
  keypair                           = var.keypair
  sshrestrict                       = var.sshrestrict
  certificate                       = var.certificate
}


module "cloudwatch" {

  source = "github.com/sandeepkose/terraform-aws-elasticbeanstalk/modules/cloudwatch/"
  
  
  app_tags                          = var.app_tags
  alarm_sns_topic                   = var.alarm_sns_topic
  asgName                           = module.eb.asgName
  envName                           = module.eb.envName
  lbarn                             = module.eb.lbarn
}
