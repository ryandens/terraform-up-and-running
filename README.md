## Terraform up and running reference?
Remember that time you read Terraform Up and Running! Me neither. 
This git repo exists as a personal reference for how I completed 
workflows laid out in Terraform Up and Running. 


## Tooling 
Note that for initializing the TF backend, we opted to use the project
[terraform-aws-backend](https://github.com/stavxyz/terraform-aws-backend). 
Follow instructions in their README for bootstrapping the backend if we
decide to work with this infrastructure again. 

## Teardown
Also recall we had some issues destroyed the TF backend, as this is something
terraform specifically tries to help you to not do accidentally. Make sure
to run `terraform state rm module.backend.aws_s3_bucket.tf_backend_bucket`
prior to running `terraform destroy` in order to successfully destroy the
infrastructure for the backend. This was recommended in 
[terraform-aws-backend issue #9](https://github.com/stavxyz/terraform-aws-backend/issues/9)
