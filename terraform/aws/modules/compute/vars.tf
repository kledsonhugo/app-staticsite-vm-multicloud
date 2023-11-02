variable "rede_id" {}
variable "subnet_id" {}
variable "rede_cidr" {}

variable "ami" {
    type    = string
    default = "ami-02e136e904f3da870"
    validation {
        condition     = length(var.ami) > 4 && substr(var.ami, 0, 4) == "ami-"
        error_message = "The ami value must be a valid AMI id, starting with \"ami-\"."
    }
}
