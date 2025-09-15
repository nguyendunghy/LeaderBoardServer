variable "aws_region" {
  default = "ap-southeast-1"
}

variable "app_name" {
  default = "leaderboard-app"
}

variable "docker_image" {
  description = "Docker image to deploy (from DockerHub or ECR)"
  type        = string
  default     = "dockerdungkstn/leaderboard-app:latest"
}

variable "vpc_id" {
  description = "VPC ID where ECS will run"
  type        = string
  default     = "vpc-dungnv93-leaderboard"
}

variable "subnets" {
  description = "List of subnets (must be in the given VPC)"
  type        = list(string)
  default     = ["subnet-dungnv93-1", "subnet-dungnv93-2"]
}

variable "desired_count" {
  default = 2
}

variable "cpu" {
  default = 512
}

variable "memory" {
  default = 1024
}