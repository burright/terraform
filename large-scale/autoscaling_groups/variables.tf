variable "availability_zones" {
  default = "us-west-2a,us-west-2b,us-west-2c"
}
variable "asg_min" {
  default = "2"
}
variable "asg_max" {
  default = "10"
}
variable "public_subnet_id" {
}
variable "webapp_lc_id" {
}
variable "webapp_lc_name" {
}
variable "webapp_elb_name" {
  
}