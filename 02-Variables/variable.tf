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

variable "sample2" {}

output "sample2" {
  value = var.sample2
}

//var data types

variable "string" {
  default = "Hello"
}

variable "number" {
  default = 100
}

variable "boolean" {
  default = true
}

output "data-types" {
  value = "string - ${var.string}, number - ${var.number}, boolean - ${var.boolean}"
}

//vataible types

variable "training" {
  default = "DevOps"
}

variable "clouds" {
  default = [ "AWS","Azure" ]
}

variable "training-details" {
  default = {
    batch = 57
    timing = "7AM IST"
  }
}

output "trainig" {
  value = var.training
}

output "cloud1" {
  value = var.clouds[0]
}

output "cloud2" {
  value = var.clouds[1]
}

output "training-details" {
  value = "time is ${var.training-details["timing"]}"
}

