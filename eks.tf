module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.0.4"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  cluster_endpoint_public_access = true

  eks_managed_node_group_defaults = {
    ami_type = var.ami_type
  }

  eks_managed_node_groups = {
    one = {
      name = "node-group-1"

      instance_types = [var.instance_type]

      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_size
    }

    two = {
      name = "node-group-2"

      instance_types = [var.instance_type]

      min_size     = var.min_size
      max_size     = 2
      desired_size = 1
    }
  }
}
