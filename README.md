# Terraform-HA

Deploy high availability web app with terraform

#IMPUT VARIABLES
#az_num - Set the number of availability zones to use
#namespace - Set a prefix for the resource names
#vpc_cidr_block - Set the IP address block for the virtual private cloud (VPC)


#PROVIDER
#aws - Set the minimal provider version and default resource tags


#RESOURCES FOR NETWORKING
#aws_vpc - Create a default VPC
#aws_subnet - Create a subnet within a VPC
#aws_internet_gateway - Allow communication between VPC and the internet
#aws_route_table - Create a routing table to control where the network traffic is directed
#aws_main_route_table_association - Set the default network routing table for the default VPC
#aws_route_table_association - Associate the route table to a VPC subnet
#aws_nat_gateway - Create a Network Address Translation (NAT) gateway to allow private subnet to access services
#aws_eip - Create an Elastic IP (EIP) for the NAT Gateways


#DATA SOURCES
#aws_region - Get the current region
#aws_availability_zones - Get list of availability zones
#aws_ami - Get a specific Linux Amazon machine image (AMI)
#aws_iam_policy - Get a specific Identity and Access Management (IAM) policy
#aws_iam_policy_document - Generate a IAM policy document to allow EC2 to assume
#a role

#The update to main.tf begins by creating local variables that define the VPC 
#availability zone and CIDR block values, RDS instance values, EC2 instance 
#type, and credentials for the Wordpress Admin user. Next, the file defines 
#data sources to look up definitions of the given AWS environment such as the 
#current region, list of availability zones, ARNs of IAM policies, etc which 
#will be used to create AWS resources.


#RESOURCES FOR SECURITY
#aws_security_group - Create a security group that controls the traffic that 
#is allowed to reach and leave the resources
#aws_vpc_endpoint - Create a VPC endpoint (VPCE) enables customers to privately 
#connect to supported AWS services

# creating security groups to restrict access to your application, database, 
#network file storage, and creating VPC endpoints to enable AWS services like 
#S3 to access your AWS resources through private ingresses.


#RESOURCES FOR APPLICATION
#aws_db_subnet_group - Create subnet group 4 database across availability zones
#random_password - Create a random password
#aws_secretsmanager_secret - Create a Secrets Manager entry
#aws_secretsmanager_secret_version - Create value for the Secrets Manager entry
#aws_db_instance - Create a MySQL database
#aws_efs_file_system - Create an EFS volume
#aws_efs_mount_target - Create a configuration where the EFS volume to a set 
#of instances
#aws_instance - Create an EC2 that bootstrap the Wordpress application
#aws_ami_copy - Create a copy of the Amazon Machine Image (AMI) being used
#aws_lb - Create a application load balancer (ALB) FOR the Wordpress web app
#aws_launch_template - Create a launch template that hosts the Wordpress web app
#aws_autoscaling_group - Create a auto-scaler group that scale the Wordpress 
#web application instances
#aws_autoscaling_policy - Create a auto scaling policy
#aws_cloudwatch_metric_alarm - Create a CloudWatch Metric Alarm
#aws_lb_target_group - Create a target group to attach the load balancer for 
#the Wordpress web application
#aws_lb_listener - Create a load balancer listener for the ALB
#tls_private_key - Create a TLS private key
#tls_self_signed_cert - Create  public TLS certificate signed by the private key
#aws_acm_certificate - Create an ACM certificate entry with the TLS public 
#certificate and private key
#aws_s3_bucket - Create a private S3 Bucket
#aws_s3_bucket_public_access_block - Create a public access block which disable 
#public access for the private S3 Bucket
#aws_s3_object - An object of S3, typically represent data similar file
#aws_cloudfront_distribution - Create a CloudFront distribution for the 
#Wordpress web application
#aws_cloudfront_cache_policy - Create a CloudFront cache policy for the 
#Wordpress web application