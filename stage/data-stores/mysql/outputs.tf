output "address" {
  description = "Endpoint of the database, for connections"
  value       = aws_db_instance.example.address
}

output "port" {
  description = "The port the database is listening on"
  value       = aws_db_instance.example.port
}
