# Overview

In this ansible example we will perform the below tasks:

```
playbook: mgmt_agent_install.yaml

  play #1 (localhost): localhost        TAGS: []
    tasks:
      Create a directory if it does not exist   TAGS: []
      Create management_agent_install_key       TAGS: []
      debug     TAGS: []
      set_fact  TAGS: []
      Creating management agent input.rsp file  TAGS: []
      Download the Management Agent RPM package and copy to scratch locally     TAGS: []
      Copy the Management Agent Script locally to scratch       TAGS: []
      Locally remove oracle.mgmt_agent.rpm      TAGS: []

  play #2 (ocls_hosts): ocls_hosts      TAGS: []
    tasks:
      check java executable is present on remote host   TAGS: [check-java-exists]
      debug     TAGS: []
      Checking Java version     TAGS: []
      debug     TAGS: []
      Check if Java Version is greater than 1.8 TAGS: []
      Transfer all mgmt agent files over to the hosts   TAGS: []
      Install the mgmt agent rpm        TAGS: [install-agent]
      Setting up mgmt agent service     TAGS: [setup-agent]
      Start mgmt agent service  TAGS: [start-agent]
      Cleanup management agent scratch  TAGS: []
      Set varlog folder permissions     TAGS: []
```

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
export region=ap-sydney-1

# How to run:
ansible-playbook -i hosts mgmt_agent_install.yaml

