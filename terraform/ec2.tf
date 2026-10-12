resource "aws_instance" "Monitoring" {
  count         = 1
  ami           = "ami-0532913178263be11"
  instance_type = "c7i-flex.large"
  subnet_id     = aws_subnet.public1.id
  vpc_security_group_ids = [
    aws_security_group.dev_sg.id
  ]
  key_name = "singapore"
  
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }  
  tags = {
    Name = "Monitoring"
  }
}

resource "aws_instance" "Scheduler" {
  count         = 1
  ami           = "ami-0532913178263be11"
  instance_type = "t3.small"
  subnet_id     = aws_subnet.public1.id
  vpc_security_group_ids = [
    aws_security_group.dev_sg.id
  ]
  key_name = "singapore"
  
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
  tags = {
    Name = "Scheduler"
  }
}

resource "aws_instance" "Code-Validate" {
  count         = 1
  ami           = "ami-0532913178263be11"
  instance_type = "c7i-flex.large"
  subnet_id     = aws_subnet.public1.id
  vpc_security_group_ids = [
    aws_security_group.dev_sg.id
  ]
  key_name = "singapore"
  
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
  tags = {
    Name = "Code-Validate"
  }
}

resource "aws_instance" "Build-Server" {
  count         = 1
  ami           = "ami-0532913178263be11"
  instance_type = "c7i-flex.large"
  subnet_id     = aws_subnet.public1.id
  vpc_security_group_ids = [
    aws_security_group.dev_sg.id
  ]
  key_name = "singapore"
  
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
  tags = {
    Name = "Build-Server"
  }
}

resource "aws_instance" "EKS-Server" {
  count         = 1
  ami           = "ami-0532913178263be11"
  instance_type = "t3.small"
  subnet_id     = aws_subnet.public1.id
  vpc_security_group_ids = [
    aws_security_group.dev_sg.id
  ]
  key_name = "singapore"
  
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
  }
  tags = {
    Name = "EKS-Server"
  }
}
