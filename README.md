# AWS Route53 Terraform Module

This Terraform module creates AWS Routes53 records from from a [data structure](https://github.com/mangomagic/digitalocean-dns/blob/main/example/example_com.tfvars).

Note: Terraform version >= 1.3.0 is required.

See `example` folder:

```
$ terraform init
$ terraform plan -var-file=test_example_com.tfvars
```

See also: generating a data structure from pre-existing Digital Ocean DNS records [here](https://github.com/mangomagic/digitalocean-dns-data) if migrating from Digital Ocean.