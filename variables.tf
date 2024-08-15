variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
  default     = "codestudio"
}
variable "region" {
  description = "The AWS region in which to create the EKS cluster."
  type        = string
  default     = "us-east-1"
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
  default     = "1.24"
}

variable "vpc_id" {
  description = "VPC ID where the EKS cluster will be deployed"
  type        = string
  default     = "vpc-0491c9379cbcecbfb"
}

variable "subnet_ids" {
  description = "List of subnet IDs for the EKS cluster"
  type        = list(string)
  default     = ["subnet-02ea7fac59dc7069f", "subnet-03a1cea1524037acd", "subnet-0bd92f225f11ebbb6"]
}

variable "instance_type" {
  description = "Instance type for the EKS worker nodes"
  type        = string
  default     = "t3.small"
}

variable "min_size" {
  description = "Minimum number of worker nodes"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum number of worker nodes"
  type        = number
  default     = 3
}

variable "desired_size" {
  description = "Desired number of worker nodes"
  type        = number
  default     = 2
}

variable "ami_type" {
  description = "AMI type for the managed node group"
  type        = string
  default     = "AL2_x86_64"
}
