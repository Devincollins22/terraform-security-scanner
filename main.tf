# WARNING: This security group is intentionally insecure for demo purposes
# It allows SSH access from anywhere (0.0.0.0/0), which is a major security risk

resource "aws_security_group" "bad_sg" {
  name        = "bad-security-group"
  description = "Allows SSH from a resticted network"

  ingress {
    description = "Allow SSH from private indviduals"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    # BAD PRACTICE: Open to the entire internet
    cidr_blocks = ["10.0.0.0/24"]
  }
}
