# Overview

In this ansible example we will perform the below tasks:

```
playbook: setup_vcn_flow_logs.yaml

  play #1 (localhost): localhost        
    tasks:
      Check pre-requisites      
      Create log_group  
      List vcns 
      List subnets      TAGS: [list_subnet]
      Create Service Log        
``` 
## Pre Requisites
You need to have OCI CLI installed and OCI config created in your development environment refer https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm#Quickstart

```
$ cat ~/.oci/config
[DEFAULT]
user=ocid1.user.oc1..aaaaaaaay
fingerprint=06:2f:27:74:34:
tenancy=ocid1.tenancy.oc1..aaaaaaaa
region=ap-sydney-1
key_file=<key_file_path>
```

## Set the Environment variables:

```
export compartment_ocid=ocid1.compartment.oc1..aaaaaaaa 
export network_compartment_ocid=ocid1.compartment.oc1..aaaaaaaa
```
# How to run:
```
ansible-playbook main.yaml
```

