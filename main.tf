module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "4.3.1"

  name       = "fifo"
  fifo_queue = true

  tags = {
    Environment = "dev"
  }
}
