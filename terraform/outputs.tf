output "eks_cluster_id" {
  description = "EKS Cluster ID"
  value       = aws_eks_cluster.eks_cluster.id
}

output "eks_node_group_id" {
  description = "EKS Node Group ID"
  value       = aws_eks_node_group.eks_nodes.id
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.eks_vpc.id
}


