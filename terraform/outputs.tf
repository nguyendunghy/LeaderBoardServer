output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "node_group_arn" {
  value = module.eks.node_groups["default"].node_group_arn
}