output "db_address" {
    value = aws_db_instance.udagram.address
}

output "db_name" {
    value = aws_db_instance.udagram.name
}

output "db_instance_id" {
    value = aws_db_instance.udagram.id
}

output "db_instance_username" {
    value = aws_db_instance.udagram.username
}

output "bucket_id" {
    value = aws_s3_bucket.udagram.id
}

output "bucket_regional_domain" {
    value = aws_s3_bucket.udagram.bucket_regional_domain_name
}