variable "aws_accesskey" {
  description = "aws accesskey"
  type        = string
  default     = "***********"
}


variable "aws_secretkey" {
  description = "aws secretkey"
  type        = string
  default     = "*************"
}


variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "ap-south-1"
}


variable "aws_sg" {
  description = "aws sg"
  type        = list(string)
  default     = [ "sg-4204842c", "sg-022f2462e5f5360ed" ]
}



variable "aws_key" {
  description = "aws key pemfile"
  type        = string
  default     = "assest"
}


