variable "sample" {
  default = "Hello World"
}

output "sample" {
  value = var.sample
}

output "sample1" {
  value = "${var.sample} - any string"
}

//variable if it is combined with some other string then we use "${}" interpolation for variable accessing