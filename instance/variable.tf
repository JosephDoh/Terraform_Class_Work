variable "ami_id" {
  type = map(string)                #map of strings 
  default = {                       # different ami's for different environment
    "prd" = "ami-0ed9277fb7eb570c9" # amazon linux 2 us-east-1
    "stg" = "ami-061ac2e015473fbe2" # amazon linux 2 us-east-1
    "dev" = "ami-0b0af3577fe5e3532" # Redhat linux 2 us-east-1
  }
}
variable "region" {
  type    = string
  default = "us-east-1"

}

variable "type_instance" {
  type = map(string)
  default = {
    "prod" = "t3.medium"
    "stg"  = "t2.micro"
    "dev"  = "t2.micro"
  }




}

variable "terraform_Env" {
  type = string

}
variable "mandatory_tags" {
  type = map(map(string)) # a map to point to another map of strings
  default = {
    "prd" = {
      "Env"  = "prd"
      "Name" = "prod"
    },
    "stg" = {
      "Env"  = "stg"
      "Name" = "staging"
    },
    "dev" = {
      "Env"  = "dev"
      "Name" = "Development"
    }
  }
}

#terraform plan -var-file (dev or stg or prd.tfvars)
