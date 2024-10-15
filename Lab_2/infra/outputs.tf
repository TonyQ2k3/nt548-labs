output "jenkins_id" {
    description = "The ID of the Jenkins EC2 instance"
    value       = aws_instance.jenkins.id
}

output "jenkins_public_ip" {
    description = "The public IP address of the Jenkins EC2 instance"
    value       = aws_instance.jenkins.public_ip
}