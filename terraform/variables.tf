variable "aws_region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "VPC CIDR Block"
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Public Subnet CIDRs"
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "eks_cluster_name" {
  description = "EKS Cluster Name"
  default     = "my-eks-cluster"
}

variable "eks_node_group_name" {
  description = "EKS Node Group Name"
  default     = "my-eks-nodes"
}

variable "instance_type" {
  description = "EC2 instance type for worker nodes"
  default     = "t3.medium"
}

variable "eks_cluster_role" {
  description = "IAM Role for EKS Cluster"
  default     = "Eks_cluster_role"
}

