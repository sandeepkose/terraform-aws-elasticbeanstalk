region = "us-east-2"

domain_name = "example.com"

app_tags = "Example"

application_name = "Example-App"

vpc_id = "vpc-3f27f457"

ec2_subnets = "subnet-0749916f"

elb_subnets = ["subnet-0749916f","subnet-d497c199"]

instance_type = "t3.micro"

disk_size = "20"

keypair = "sshkey"

sshrestrict="111.118.116.116/32"

certificate = "arn:aws:acm:us-east-2:certificate/1d304df2-56ebfaa03980"

alarm_sns_topic = "arn:aws:sns:us-east-2:test"
