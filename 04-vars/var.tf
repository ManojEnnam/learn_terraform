variable "sample" {
  default = 100
}
output "sample" {
  value = var.sample
}
variable "sample1" {
  default = 100
}
output "sample1" {
  value = var.sample1
}

variable "cli" {
}
output "cli" {
  value = var.cli
}
variable "input" {}

variable "sample5" {
  default = "Hello"
}

variable "sample6" {
  default = [
    "Hello",
    1000,
    true,
    "World"
  ]
}

variable "sample7" {
  default = {
    string  = "Hello",
    number  = 100,
    boolean = true
  }
}

output "types" {
  value = "value sample 5 - ${var.sample5}, first value in list - ${var.sample6[4]}, boolean value in map=${var.sample7["boolean"]}"
}