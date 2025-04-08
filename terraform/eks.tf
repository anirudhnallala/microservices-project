
data "aws_caller_identity" "current" {}

resource "aws_eks_cluster" "eks_cluster" {
  name     = var.eks_cluster_name
  role_arn = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.eks_cluster_role}"

  vpc_config {
    subnet_ids         = aws_subnet.public_subnet[*].id
    security_group_ids = [aws_security_group.eks_sg.id]
  }

  depends_on = [aws_security_group.eks_sg]
}

resource "aws_eks_node_group" "eks_nodes" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = var.eks_node_group_name
  node_role_arn   = "arn:aws:iam::${data.aws_caller_identity.current.account_id}:role/${var.eks_cluster_role}"

  subnet_ids = aws_subnet.public_subnet[*].id

  scaling_config {
    desired_size = 2
    max_size     = 3
    min_size     = 1
  }

  instance_types = [var.instance_type]

  depends_on = [aws_eks_cluster.eks_cluster]
}


