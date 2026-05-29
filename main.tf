module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "5.2.2"

  name       = "fifo"
  fifo_queue = true

  tags = {
    Environment = "dev"
  }
}
