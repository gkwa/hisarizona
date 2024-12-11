output "sqs_queue_id" {
  description = "The URL of the SQS Queue"
  value       = module.sqs.queue_id
}

output "sqs_queue_arn" {
  description = "The ARN of the SQS Queue"
  value       = module.sqs.queue_arn
}
