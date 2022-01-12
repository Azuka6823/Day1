variable "myvpccidr" {
    type = string
    default = "10.0.0.0/16"
  
}
variable "mysubnetcidr" {
    type = string
    default = "10.0.1.0/24"
  
}
variable "AZ" {
    type = string
    default = "us-east-1b"
  
}
variable "ami" {
    type = string
    default = "ami-01cc34ab2709337aa"
  
}
variable "instancetype" {
    type = string
    default = "t2.micro"

  
}