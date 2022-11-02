# Overview

In this ansible example we will perform the below tasks:

playbook: mgmt_agent_install.yaml

  play #1 (localhost): localhost        
    tasks:
      Create a directory if it does not exist   
      Create management_agent_install_key       
      Creating management agent input.rsp file  
      Download the Management Agent RPM package and copy to scratch locally     
      Copying the Management Agent Script locally to scratch    

  play #2 (ocls_hosts): ocls_hosts      
    tasks:
      Transfer all mgmt agent files over to the hosts   
      Running the Management Agent install script       
      Set varlog folder permissions     

## Pre Requisites
You need to have OCI CLI installed and OCI config created in your development environment refer https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/cliinstall.htm#Quickstart

$ cat ~/.oci/config
[DEFAULT]
user=ocid1.user.oc1..aaaaaaaay
fingerprint=06:2f:27:74:34:
tenancy=ocid1.tenancy.oc1..aaaaaaaa
region=ap-sydney-1
key_file=<key_file_path>

## Set the Environment variables:

export compartment_ocid=ocid1.compartment.oc1..aaaaaaaa 
export oci_region=ap-sydney-1

# How to run:
ansible-playbook -i hosts mgmt_agent_install.yaml

