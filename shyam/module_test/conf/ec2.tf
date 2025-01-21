data aws_security_group "sgdetails" {
    filter {
        name = "tag:Name"
        values = ["terraform1"]
    }
}

module "myinstance" {
    source = "../mod"
    instance_type = "t2.medium"
    sgid = data.aws_security_group.sgdetails.id
}