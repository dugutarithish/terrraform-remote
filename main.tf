provider "aws" {
  region = "ap-south-2"

}


resource "aws_instance" "Rithish" {
  ami           = "ami-0199ac7c9fbf9ed83"
  instance_type = "t3.micro"

  tags = {
    Name = "hello"
  }
}

resource "aws_s3_bucket" "rithish-123-xyz" {
  bucket = "rithish-123-xyz"


}


resource "aws_dynamodb_table" "rithish-1" {
  name         = "rithish"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }

}
