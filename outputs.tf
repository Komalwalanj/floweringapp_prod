# output "key_arn" {
#   description = "The Amazon Resource Name (ARN) of the key"
#   value       = module.kms.key_arn
# }

# output "key_id" {
#   description = "The globally unique identifier for the key"
#   value       = module.kms.key_id
# }

# output "alias_arn" {
#   description = "Alias ARN"
#   value       = module.kms.alias_arn
# }

# output "alias_name" {
#   value       = module.kms.alias_name
#   description = "Alias name"

# }
#  Internal NLB
# output "int_nlb_id" {
#   description = "The ID and ARN of the internal network load balancer we created."
#   value       = module.nlb.lb_id
# }

# output "int_nlb_arn" {
#   description = "The ID and ARN of the internal network load balancer we created."
#   value       = module.nlb.lb_arn
# }

# output "int_nlb_dns_name" {
#   description = "The DNS name of the internal network load balancer."
#   value       = module.nlb.lb_dns_name
# }

# output "int_nlb_arn_suffix" {
#   description = "ARN suffix of our internal network load balancer - can be used with CloudWatch."
#   value       = module.nlb.lb_arn_suffix
# }

# output "int_nlb_zone_id" {
#   description = "The zone_id of the internal network load balancer to assist with creating DNS records."
#   value       = module.nlb.lb_zone_id
# }

# output "int_nlb_http_tcp_listener_arns" {
#   description = "The ARN of the TCP and HTTP internal network load balancer listeners created."
#   value       = module.nlb.http_tcp_listener_arns
# }

# output "int_nlb_http_tcp_listener_ids" {
#   description = "The IDs of the TCP and HTTP internal network load balancer listeners created."
#   value       = module.nlb.http_tcp_listener_ids
# }

# output "int_nlb_https_listener_arns" {
#   description = "The ARNs of the HTTPS internal network load balancer listeners created."
#   value       = module.nlb.https_listener_arns
# }

# output "int_nlb_https_listener_ids" {
#   description = "The IDs of the internal network load balancer listeners created."
#   value       = module.nlb.https_listener_ids
# }

# output "int_nlb_target_group_arns" {
#   description = "ARNs of the target groups of internal network load balancer. Useful for passing to your Auto Scaling group."
#   value       = module.nlb.target_group_arns
# }

# output "int_nlb_target_group_arn_suffixes" {
#   description = "ARN suffixes of our target groups of internal network load balancer - can be used with CloudWatch."
#   value       = module.nlb.target_group_arn_suffixes
# }

# output "int_nlb_target_group_names" {
#   description = "Name of the target group of internal network load balancer. Useful for passing to your CodeDeploy Deployment Group."
#   value       = module.nlb.target_group_names
# }

# output "service_arn" {
#   description = "The Amazon Resource Name (ARN) that identifies the ECS service."
#   value       = aws_ecs_service.service.id
# }

# output "target_group_arn" {
#   description = "The ARN of the Target Group used by Load Balancer."
#   value       = [for tg_arn in aws_lb_target_group.task : tg_arn.arn]
# }

# output "target_group_name" {
#   description = "The Name of the Target Group used by Load Balancer."
#   value       = [for tg_name in aws_lb_target_group.task : tg_name.name]
# }

# output "service_sg_id" {
#   description = "The Amazon Resource Name (ARN) that identifies the service security group."
#   value       = aws_security_group.ecs_service.id
# }

# output "service_name" {
#   description = "The name of the service."
#   value       = aws_ecs_service.service.name
# }

# output "log_group_name" {
#   description = "The name of the Cloudwatch log group for the task."
#   value       = aws_cloudwatch_log_group.main.name
# }

# output "execution_role_arn" {
#   description = "The Amazon Resource Name (ARN) specifying the ECS execution role."
#   value       = aws_iam_role.execution.arn
# }

# output "execution_role_name" {
#   description = "The name of the ECS execution role."
#   value       = aws_iam_role.execution.name
# }

# ###############################################################################
# Repository (Public and Private)
# ###############################################################################

# output "repository_arn" {
#   description = "Full ARN of the repository"
#   value       = try(aws_ecr_repository.this[0].arn, aws_ecrpublic_repository.this[0].arn, null)
# }

# output "repository_registry_id" {
#   description = "The registry ID where the repository was created"
#   value       = try(aws_ecr_repository.this[0].registry_id, aws_ecrpublic_repository.this[0].registry_id, null)
# }

# output "repository_url" {
#   description = "The URL of the repository"
#   value       = try(aws_ecr_repository.this[0].repository_url, aws_ecrpublic_repository.this[0].repository_uri, null)
# }

