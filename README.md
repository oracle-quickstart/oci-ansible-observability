# Ansible playbooks for Oracle Cloud Infrastructure Observability and Management

This repository will contain automation for OCI Observability & Management Services using ansible.

## Ansible Setup

Follow the Oracle OCI (Oracle Cloud Infrastructure) ansible getting started guide to [setup](https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/ansiblegetstarted.htm) ansible with OCI collections on your workstation.

Both Ansible and OCI Ansible collection come preinstalled and preauthenticated on Cloud Shell. You can ignore setup if you are using Cloud Shell.

## The following services are automated

- [Management Gateway Install](./mgmt_gateway_install/README.md) <br>
- [Management Agent Install](./mgmt_agent_install/README.md)

## Details: Management Gateway

The Management Gateway provides a single point of communication between the Management Agents (or any other customer-side products) and the Oracle Cloud Infrastructure.

<img src="https://docs.oracle.com/en-us/iaas/management-agents/doc/img/gateway_concepts_diagram.png" width="300" height="300">

Read Oracle [docs](https://docs.oracle.com/en-us/iaas/management-agents/doc/management-gateway.html) for more information.

## Contributing

This project welcomes contributions from the community. Before submitting a pull
request, see [CONTRIBUTING](./CONTRIBUTING.md) for details.

## License

Copyright (c) 2021, 2022 Oracle and/or its affiliates.
Released under the Universal Permissive License (UPL), Version 1.0.
See [LICENSE](./LICENSE) for more details.

[oci]: https://cloud.oracle.com/en_US/cloud-infrastructure
[oci ansible]: https://github.com/oracle/oci-ansible-collection

