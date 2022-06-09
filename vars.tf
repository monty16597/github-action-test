variable "TEST_1" {}
variable "TEST_2" {}

output "name1" {
    value = var.TEST_1
}
output "name2" {
    value = var.TEST_2
}