resource "aws_security_group" "zebra-sg" {
  name        = "united-security-group"
  description = "Security group for EC2 instances in the united VPC"
  vpc_id      = aws_vpc.zebra.id

  # Allow SSH from your IP
  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "zebra-sg"
  }
}

