
variable "my_map" {
    type = map
    default = {
        "key1" : "t2.micro"
        "key2" : "t2.medium"
    }
}

output "demo" {
    value = lookup(var.my_map, "key1")
}