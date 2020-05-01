# ASG example
Creates an Auto Scaling Group on AWS to create a cluster of web servers


# How to use
Configure your environment to be configured to use your AWS account. I prefer to simply do the following:
```shell script
$ export AWS_PROFILE=<profile-name>
```

assuming you have your AWS credentials set in `~/.aws/credentials`

Next, run the following terraform commands
```shell script
$ terraform init
$ terraform apply
```

Enter "yes" when prompted by `terraform apply`, presuming the plan outputted is what you expected.

When you're done testing out this module, clean up resources by running

```shell script
$ terraform destroy
```