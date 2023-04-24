# Management Gateway Install

# Overview

In this ansible example we install the management gateway.

The following manual tasks are automated:

Verify pre-requisites:

```
- Create Credential dynamic group
- Create Management Gateway dynamic group
- Create Identity & Management Policy
- Verify Java Versions
```

Install Gateway agent:

```
- Create management gateway install key     
- Create management gateway response file 
- Download management gateway package  
- Install the management gateway
- Set up management gateway service 
- Start management gateway service 
```

## Pre Requisites
Both Ansible and OCI Ansible collection come preinstalled and preauthenticated on Cloud Shell.
These steps are tested on OCI Cloud Shell. 

For installing ansible on your workstations refer documentation.
https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/ansiblegetstarted.htm#Getting_Started_with_Oracle_Cloud_Infrastructure_and_Ansible

## Set the Environment variables:

```
export compartment_ocid=ocid1.compartment.oc1..aaaaaaaa 
export tenancy_ocid=ocid1.tenancy.oc1..aaaaaaaa 
```
For Ansible to ignore host key checking add the following
```
export ANSIBLE_HOST_KEY_CHECKING=False
```

# How to run:

Run the Pre-requisites first:

```
ansible-playbook -i hosts gateway_pre_checks.yaml 
```
Note: You will need to fix all the issues that might arise out of those checks.

```
ansible-playbook -i hosts gateway_iam_pre_reqs.yaml 
```
Note: You can ignore the IAM pre-requisites if you have manually created dynamic groups and policies.

Install the agent:
```
ansible-playbook -i hosts mgmt_gateway_install.yaml
```

# UnInstalling the Gateway:

```
ansible-playbook -i hosts mgmt_gateway_uninstall.yaml
```
