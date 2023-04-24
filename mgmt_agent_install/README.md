# Management Agent Install Overview

In this ansible example we will perform the below tasks:

## Pre-Checks:

A independent pre-check is provided to run and determine problems before starting agent installation.

- Check Java Versions
- Checks if the host can reach Observability & Management Endpoints

## IAM Pre-Requisites:

- Create Management Agent dynamic group
- Create Identity & Management Policy

## Agent Install tasks:

- Create management agent install key
- Create management agent response file
- Download Management Agent image
- Install the management agent
- Set up management agent service
- Start management agent service
- Set varlog folder permissions

Also ensure these generic prerequisites are met before starting.

https://docs.oracle.com/en-us/iaas/management-agents/doc/perform-prerequisites-deploying-management-agents.html#OCIAG-GUID-BC5862F0-3E68-4096-B18E-C4462BC76271

Both Ansible and OCI Ansible collections comes preinstalled and preauthenticated on Cloud Shell. 

For installing ansible on your workstations refer documentation.
https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/ansiblegetstarted.htm#Getting_Started_with_Oracle_Cloud_Infrastructure_and_Ansible


## Set the Environment variables:

```
export compartment_ocid=ocid1.compartment.oc1..aaaaaaaa 
export tenancy_ocid=ocid1.tenancy.oc1..aaaaaaaa 
```
# How to run:

Run the Pre-checks first:

```
ansible-playbook -i hosts mgmt_agent_pre_checks.yaml
```

Setup IAM Policies:

```
ansible-playbook -i hosts mgmt_agent_iam_pre_reqs.yaml
```

Note: You can ignore the pre-requisites if you have manually created dynamic groups and policies.

Install the agent:

```
ansible-playbook -i hosts mgmt_agent_install.yaml
```

