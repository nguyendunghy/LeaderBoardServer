output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "node_group_arns" {
  description = "ARNs of managed node groups"
  value       = module.eks.eks_managed_node_groups
}