# Overview

In this ansible example we will perform the below tasks:

```
playbook: mgmt_gateway_install.yaml

  play #1 (localhost): localhost        
    tasks:
      Create a local scratch folder  
      Create management gateway install key     
      Create management gateway response file 
      Download management gateway package     

  play #2 (gateway_hosts): gateway_hosts     
    tasks:
      Check java program exists on remote host  TAGS: [check-java-exists]
     
      Check if Java Version is greater than 1.8 
      Transfer all management gateway files over to the hosts 
      Install the management gateway    TAGS: [install-gateway]
      Set up management gateway service TAGS: [setup-gateway]
      Start management gateway service  TAGS: [start-gateway]
      Cleanup management gateway scratch  
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
```
# How to run:
```
ansible-playbook -i hosts mgmt_gateway_install.yaml
```

