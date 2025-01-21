module "practice" {
    source = "../Modules"
    size = "t2.medium"
}

output "ec2publicip" {
    value = module.practice.ec2publicip
}