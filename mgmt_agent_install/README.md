# Management Agent Install Overview

In this ansible example we will perform the below tasks:

## Pre-requisite tasks:

- Create Management Agent dynamic group
- Create Identity & Management Policy
- Check Java Versions

## Agent Install tasks:
- Create management agent install key
- Create management agent response file
- Download Management Agent image
- Install the management agent
- Set up management agent service
- Start management agent service
- Set varlog folder permissions

## Pre Requisites

Before deploying Management Agents in your hosts, ensure that the following prerequisites are met

https://docs.oracle.com/en-us/iaas/management-agents/doc/perform-prerequisites-deploying-management-agents.html#OCIAG-GUID-BC5862F0-3E68-4096-B18E-C4462BC76271

Both Ansible and OCI Ansible collections comes preinstalled and preauthenticated on Cloud Shell. The below commands are tested using cloud shell. If you are using

## Set the Environment variables:

```
export compartment_ocid=ocid1.compartment.oc1..aaaaaaaa 
export tenancy_ocid=ocid1.tenancy.oc1..aaaaaaaa 
```
# How to run:

Run the Pre-requisites first:

```
ansible-playbook -i hosts mgmt_agent_pre_reqs.yaml
```
Note: You can ignore the pre-requisites if you have manually created dynamic groups and policies.

Install the agent:
```
ansible-playbook -i hosts mgmt_agent_install.yaml
```

