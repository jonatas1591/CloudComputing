data "aws_ami" "amazonami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-2.0.20210617.0-x86_64-gp2"]
  }

  owners = ["137112412989"]
}

resource "aws_instance" "server" {
  ami                    = data.aws_ami.amazonami.id
  instance_type          = var.instance_type
  user_data              = file("script_webserver.sh")
  subnet_id              = aws_subnet.sub_iac_pub_01.id
  vpc_security_group_ids = [aws_security_group.sg_vpc_iac_web_server.id]
  key_name               = "key_especializacao_linux"

  credit_specification {
    cpu_credits = "standard"
  }

  tags = {
    Name        = var.name
    Environment = var.env
    Provisioner = "IAC - Terraform"
    Repo        = var.repo
  }
}

