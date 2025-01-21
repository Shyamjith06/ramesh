terraform {
    backend s3 {
        bucket         = "terraform-backend-shyam"        # Your S3 bucket name
        key            = "Ram/ec2/key.tfstate"       # Path where the state file will be stored in the bucket
        region         = "eu-west-1"                         # AWS region                          # ACL permissions for the state file
        dynamodb_table = "shyam"
    }
}