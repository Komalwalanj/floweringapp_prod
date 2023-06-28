resource "aws_ecs_cluster" "cluster" {
  name = "floweringapp-prod-ecsfargate-ecs-cluster"

  setting {
    name  = "containerInsights"
    value = "disabled"
  }
}

resource "aws_ecs_cluster_capacity_providers" "cluster" {
  cluster_name = aws_ecs_cluster.cluster.name

  capacity_providers = ["FARGATE_SPOT", "FARGATE"]

  default_capacity_provider_strategy {
    capacity_provider = "FARGATE_SPOT"
  }
}

module "ecs-fargate" {
  source = "git::https://git.syngentaaws.org/terraform-modules/ecs.git/?ref=master"

  name_prefix        = "floweringapp-prod-ecs-fargate"
  vpc_id             = "vpc-0fb118c8e32fd28fc"
  private_subnet_ids = ["subnet-0340cd3625973aa12", "subnet-0636837a8a11d7099"]

  cluster_id         = aws_ecs_cluster.cluster.id
  task_container_image   = "marcincuber/2048-game:latest"
  task_container_port    =  8501

  target_groups = [
    {
      target_group_name = "floweringapp-prod-int-nlb-8501"
      container_port    = 8501
    }
  ]
 

  health_check = {
    port = "traffic-port"
    path = "/"
  }
tags = local.tags
}

