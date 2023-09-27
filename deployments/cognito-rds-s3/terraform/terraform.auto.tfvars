cluster_name                    = "kubeflow"
cluster_region                  = "us-west-2"
node_instance_type              = "m5.xlarge"
# node_instance_type_gpu_a100   = "p4d.24xlarge"
node_instance_type_gpu_v100     = "p3.8xlarge"
node_instance_type_gpu_a10g     = "g5.2xlarge"
create_subdomain                = true
generate_db_password            = true
aws_route53_root_zone_name      = "tne.ai"
aws_route53_subdomain_zone_name = "platform.tne.ai"
cognito_user_pool_name          = "kubeflow-user-pool"
use_rds                         = false
use_s3                          = true
pipeline_s3_credential_option   = "irsa"
use_cognito                     = true
load_balancer_scheme            = "internet-facing"

# The below values are set to make cleanup easier but are not recommended for production
deletion_protection="false"
secret_recovery_window_in_days="0"
force_destroy_s3_bucket="true"
