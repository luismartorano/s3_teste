module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.14.1"

  bucket = join("-", [var.bucket_name, "youtube", var.env])
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }

  tags = {
    Name        = var.bucket_name
    Environment = var.env
    Version     = "v1.3.0"
    Team        = var.team
  }

}
