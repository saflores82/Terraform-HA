# This is where to create outputs

#Creating Output
#alb_endpoint_uri - Application Load Balancer Uniform Resource Identifier
#alb_endpoint_url - Application Load Balancer Uniform Resource Locator
#cloudfront_endpoint_url - CloudFront Uniform Resource Identifier

output "alb_endpoint_uri" {
  value = aws_lb.mission_app.dns_name
}

output "alb_endpoint_url" {
  value = "https://${aws_lb.mission_app.dns_name}"
}

output "cloudfront_endpoint_url" {
  value = "https://${aws_cloudfront_distribution.mission_app.domain_name}"
}
