resource "aws_instance" "sonar" {
    ami = "ami-0574da719dca65348"
    subnet_id = element(data.aws_subnet.selected.id, 0)
    instance_type = "t2.micro"
    tags = { Name = "${var.environment}" }  
}
