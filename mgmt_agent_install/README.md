# Overview

In this ansible example we will perform the below tasks:


```
playbook: mgmt_agent_install/mgmt_agent_install.yaml

  play #1 (localhost): localhost     
    tasks:
      Create a local scratch folder  
      Create management agent install key     
      Create management agent response file 
      Download Management Agent 

  play #2 (agent_hosts): agent_hosts     
    tasks:
      Check java program exists on remote host      
      Check if Java Version is greater than 1.8 
      Transfer all management agent files over to the hosts   
      Install the management agent              
      Set up management agent service          
      Start management agent service             
      Cleanup management agent scratch  
      Set varlog folder permissions    
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

To start using Ansible with OCI, ensure that you meet the prerequisites, then install the Ansible collection using yum or manually.
Follow the documentation here:
https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/ansiblegetstarted.htm#Getting_Started_with_Oracle_Cloud_Infrastructure_and_Ansible

Both Ansible and our Ansible collection also come preinstalled and preauthenticated on Cloud Shell.

## Set the Environment variables:

```
export compartment_ocid=ocid1.compartment.oc1..aaaaaaaa 
```
# How to run:
```
ansible-playbook -i hosts mgmt_agent_install.yaml
```

