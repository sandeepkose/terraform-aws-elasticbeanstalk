# Elastic Beanstalk WebServer Environment with Terraform

This terraform configuration will create Elastic Beanstalk WebServer Environment Amazon Linux 2 and PHP 8.0. I also redirected all HTTP traffic to HTTPS in this configuration. I set up dynamically the solution stack so you don't have to worry if a new platform version of PHP 8.0 is released.

<br/>

<br/>

Before deployment create **key pair** and use name of that key pair in variables file. Also you have to existing **SNS Topic** for your alarm notification.


<br/>

Change these variables in the terraform.tfvars file with your own before the deployment.

<br/>

```
region = "us-east-1"

domain_name = "example.com"

app_tags = "Example"

application_name = "Example-App"

vpc_id = "vpc-ee2325320"

ec2_subnets = "subnet-d1c325ab"

elb_subnets = ["subnet-d1c325ab","subnet-d1c565ab"]

instance_type = "t3.micro"

disk_size = "20"

keypair = "example"

sshrestrict="111.118.116.116/32"

alarm_sns_topic = "arn:aws:sns:us-east-1:123456788800:TOPIC"

```

<br/>

When everything is ready you can deploy with these 4 commands.

### Deployment

```
terraform init
terraform validate
terraform plan
terraform apply

```
