 ##################################################################
# Internal Network Load Balancer < Target - ALB >
##################################################################
module "nlb" {
  source             = "git::https://git.syngentaaws.org/terraform-modules/alb.git/?ref=master"
  internal           = true
  load_balancer_type = "network"
  vpc_id             = var.vpc_id
  subnets            = var.subnet_ids

  http_tcp_listeners = [
    {
      port               = 443
      protocol           = "TLS"
      certificate_arn    = "arn:aws:acm:eu-central-1:769453588195:certificate/fb294229-63ac-4b89-b3ed-93e9c63f8408"
      target_group_index = 0
    },
    
  ]

  target_groups = [
    {
      name                 = "${var.application}-${var.environment}-int-nlb-tg-8501"
      backend_protocol     = "TCP"
      backend_port         = 8051
      target_type          = "ip"
  
    },
    
  ]

  tags = local.tags
  
}

##################################################################
# External Network Load Balancer <Target - int NLB IPs>
##################################################################
# module "nlb_pub" {
#   source             = "git::https://git.syngentaaws.org/terraform-modules/alb.git/?ref=master"
#   name               = "${var.application}-${var.environment}-ext-nlb"
#   load_balancer_type = "network"
#   internal           = false
#   vpc_id             = var.secure_edge_vpc_id
#   subnets            = var.secure_edge_subnet_ids

  
#   #  TCP_UDP, UDP, TCP
#   http_tcp_listeners = [
#     {
#       port               = 80
#       protocol           = "TCP"
#       target_group_index = 0
#     }
#   ]

#  https_listeners = [
#   {
#     port               = 443
#     protocol           = "TLS"
#     certificate_arn    = var.ssl_cert_arn
#     target_group_index = 1
# },
#  ]

#   target_groups = [
#     {
#       name                 = "${var.application}-${var.environment}-ext-nlb-tg-80"
#       backend_protocol     = "TCP"
#       backend_port         = 80
#       target_type          = "ip"
#       targets = {
#         ip1 = {
#           availability_zone = "all"
#           target_id = data.dns_a_record_set.int_nlb_ips.addrs[0]
#           port      = 80
#         },
#         ip2 = {
#           availability_zone = "all"
#           target_id = data.dns_a_record_set.int_nlb_ips.addrs[1]
#           port      = 80
#         }
#       }
#     },
#     {
#       name                 = "${var.application}-${var.environment}-ext-nlb-tg-443"
#       backend_protocol     = "TLS"
#       backend_port         = 443
#       target_type          = "ip"
#       targets = {
#         ip1 = {
#           availability_zone = "all"
#           target_id = data.dns_a_record_set.int_nlb_ips.addrs[0]
#           port      = 443
#         },
#         ip2 = {
#           availability_zone = "all"
#           target_id = data.dns_a_record_set.int_nlb_ips.addrs[1]
#           port      = 443
#         }
#       }
#     }
    
#   ]

#   tags = local.tags
  
# }
