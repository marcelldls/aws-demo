# aws-demo

Terraform assumes all `.tf` files in this directory are the same deployment

<https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs>

## Set credientials
```
aws configure
```

## ssh keys

Access
```
ssh -i ~/.ssh/awskey.pem adminuser@<public_ip>
```

Check release
```
lsb_release -a
```
