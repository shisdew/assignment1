variable "rg_name" { default = "rg_name" }
variable "location" { default = "CanadaCentral" }

locals {
  common_tags = {
    Name            = "Mohammed Dewan"
    Project         = "Automation Project-Assignment 1"
    ExpirationDate  = "2022-07-04"
    Email           = "shisdew@gmail.com"
    Enviroment      = "Lab"
  }
}