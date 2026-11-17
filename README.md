# terraform-oci-fk-heatwave

Reusable **Terraform / OpenTofu module** and progressive training examples for **MySQL HeatWave on Oracle Cloud Infrastructure (OCI)**.

This repository is part of the [FoggyKitchen OCI MySQL HeatWave course](https://foggykitchen.com/courses/oci-mysql-heatwave-course/). The root module provides the database layer; the [eight training lessons](training/README.md) compose it with networking, bastion access, WordPress, backups and replication.

Support expectations are documented in [SUPPORT.md](SUPPORT.md).

## Purpose

Provide a reusable reference implementation for:

- MySQL DB systems with Free Tier or paid shapes
- Optional HeatWave query acceleration
- Existing subnet integration or module-managed networking
- Automated backup policy, manual backups and cross-region backup copies
- Creating a DB system from a backup
- Custom MySQL configuration and high availability
- Replication channels, replication-user setup and read replicas

The root module does not provision application hosts, WordPress, cross-region connectivity or IAM policies. Those belong in the caller or the training lessons.

## Requirements

| Requirement | Version |
|---|---|
| Terraform / OpenTofu | >= 1.11.0 |
| oracle/oci | >= 9.12.1, < 10.0.0 |
| hashicorp/null | >= 3.2.0, < 4.0.0 |

CI uses **OpenTofu 1.11.6** and **OCI 9.12.1**. Terraform is accepted by the version constraint but is not covered by this CI workflow. The null provider supports the optional replication-user provisioner.

Configure OCI authentication and the region in the caller. Deployment requires an accessible compartment, an availability domain, suitable IAM permissions and sufficient service limits. Shape availability and Free Tier eligibility must be checked in the target tenancy; a lesson name does not guarantee a cost-free deployment.

## Repository Structure

```text
terraform-oci-fk-heatwave/
├── README.md
├── SUPPORT.md
├── LICENSE
├── CHANGELOG.md
├── versions.tf
├── variables.tf
├── outputs.tf
├── network.tf
├── mds_db_system.tf
├── heatwave.tf
├── mds_backup.tf
├── mds_custom_configuration.tf
├── mds_channel.tf
├── mds_replica.tf
├── scripts/
├── tests/
└── training/                 # Eight course lessons and their diagrams
```

## Example Usage

Configure the OCI provider in your root configuration, then call the module:

```hcl
module "mysql" {
  source = "git::https://github.com/foggykitchen/terraform-oci-fk-heatwave.git?ref=v2.0.0"

  mds_compartment_ocid    = var.compartment_ocid
  mds_availability_domain = var.availability_domain
  mds_admin_password      = var.mysql_admin_password
  mds_display_name        = "FoggyKitchenMySQL"
  mds_shape               = "MySQL.Free"

  use_existing_vcn = true
  subnet_id        = var.mysql_subnet_id
}

output "mysql_endpoint" {
  value = module.mysql.mds_database.mds_ip_address
}
```

The example uses a release pin. The current checkout may contain changes listed under **Unreleased** in [CHANGELOG.md](CHANGELOG.md). The lessons use `source = "../.."` so they exercise the root module from the same checkout.

For a complete provider configuration and deployment walkthrough, start with [lesson 1](training/lesson1_free_tier_mds). Keep passwords in sensitive caller variables or a secret workflow, not in committed `.tfvars` files. Sensitive metadata redacts normal CLI output; it does not remove secrets from state.

## Module Modes

Use separate module calls for the database and the operations that target an existing database or backup, as demonstrated in lessons 5–8.

| Mode | Main inputs | Behavior |
|---|---|---|
| DB system (default) | `mds_compartment_ocid`, `mds_availability_domain`, `mds_admin_password` | Creates a DB system; supports optional HeatWave, configuration and manual backup |
| Backup copy | `mds_cross_region_manual_backup_enabled = true`, source backup OCID and source region | Copies a backup into the caller's provider region; does not create a DB system |
| Replication-user setup | `mds_channel_repl_user_setup_enabled = true`, source credentials and SSH connection | Runs the MySQL Shell script on an existing host; does not create a DB system |
| Replication channel | `mds_channel_enabled = true`, source credentials and target DB system OCID | Creates an inbound replication channel; does not create a DB system |
| Read replica | `mds_replica_enabled = true`, source DB system OCID | Creates a replica; does not create a DB system |

Keep these modes separate. In particular, HeatWave and manual backup creation require a DB system in the same module call. Set `use_existing_vcn = true` in operation-only calls to avoid creating unused networking.

Cross-region examples pass aliased OCI providers to separate module calls. The root module does not configure providers or discover target regions automatically.

## Inputs

The complete contract, descriptions, types and defaults are in [variables.tf](variables.tf).

| Group | Key inputs |
|---|---|
| Database | `mds_compartment_ocid`, `mds_availability_domain`, `mds_admin_username`, `mds_admin_password`, `mds_shape`, `mds_data_storage_size_in_gb` |
| Networking | `use_existing_vcn`, `subnet_id`, `use_public_subnet`, `mds_vcn_cidr_block`, `mds_subnet_cidr_block` |
| HeatWave | `heatwave_cluster_enabled`, `heatwave_shape`, `heatwave_cluster_size` |
| Availability and configuration | `mds_is_highly_available`, `mds_custom_configuration_enabled`, `mds_config_binlog_expire_logs_seconds` |
| Backups | `mds_backup_policy_is_enabled`, `mds_manual_backup_enabled`, `mds_cross_region_manual_backup_enabled` |
| Restore | `mds_defined_source_enabled`, `mds_defined_source_type = "BACKUP"`, `mds_defined_source_backup_ocid` |
| Channels | `mds_channel_enabled`, `mds_channel_target_db_system_id`, source host and replication credentials |
| Replicas | `mds_replica_enabled`, `mds_replica_source_db_system_id`, `mds_replica_overrides` |
| Tags | `mds_defined_tags`, `mds_freeform_tags` |

The legacy spelling `replica_replica_overrides_mysql_version` is retained for compatibility. Use that exact input name for replica MySQL version overrides.

## Outputs

| Output | Contents |
|---|---|
| `mds_database` | DB system ID, configuration ID, IP address, ports, hostname and subnet ID |
| `mds_backup` | Manual backup ID and cross-region backup copy ID |
| `mds_channel` | Replication channel ID |

Inactive output fields are empty strings. There is currently no replica or HeatWave cluster output. See [outputs.tf](outputs.tf) for exact field names and conditions.

## Networking and Operational Notes

- With `use_existing_vcn = true`, the caller owns subnet routing and security. Supply `subnet_id` when creating a DB system.
- With `use_existing_vcn = false`, the module creates a VCN, security lists and one subnet. The default is a private subnet with a NAT gateway. `use_public_subnet = true` selects a public subnet with an internet gateway instead; it does not create a bastion or a public MySQL endpoint.
- The module-managed security list currently allows TCP 3306 and 33060 from `0.0.0.0/0`. For controlled access, use a caller-managed subnet with appropriate security rules. Custom `mds_port` values do not update the module's security-list ports.
- `MySQL.Free` forces storage to 50 GB and skips custom configuration and manual backup resources. Paid shapes and additional infrastructure may incur charges.
- The restore source block currently supports `BACKUP` only. PITR and import URL inputs remain in the legacy interface, but do not activate those restore paths.
- Replication-user setup requires SSH connectivity, MySQL Shell and appropriate sudo access on the supplied host. The existing training provisioner writes a script containing credentials to that host; manage access and cleanup accordingly.
- OCI 9 reports the existing custom configuration `variables` block as deprecated in favor of `options`. It remains in place for compatibility with the course configuration; mocked plans pass with this warning.
- Replica overrides without a configuration OCID use a module-created configuration. Review the selected shape and configuration together before deployment.

## Validation

From the repository root:

```bash
tofu fmt -check -recursive
python3 scripts/oci9_check.py --root .
python3 scripts/oci9_check.py --root training/lesson1_free_tier_mds
```

The helper runs initialization without a backend, validation and **plan-only mocked tests** in a temporary copy. It uses synthetic identifiers and does not deploy infrastructure or execute provisioners. Initialization requires network access to the provider registry and any pinned Git dependencies.

The [CI workflow](.github/workflows/provider-compatibility.yml) checks the root module and all eight lessons. Mocked plans check configuration and expressions; they do not verify IAM, shape availability, quotas, SSH execution, database connectivity or replication health. The training guide explains how to run the entire lesson matrix.

Lessons 4–7 use a legacy WordPress dependency requiring `hashicorp/template`, which has no native macOS ARM package. Use Linux AMD64 (as in CI) or OpenTofu for macOS AMD64 under Rosetta for those lessons.

For local dependency integration, use `--modules-dir /path/to/checkouts`. The helper's `OCI9_ALLOW_UNRELEASED=1` fallback is reserved for explicit migration experiments; normal CI does not enable it.

## Upgrading from v1.x

Version 2 requires OCI provider 9.x and Terraform / OpenTofu >= 1.11.0. Upgrade composed modules together, run `tofu init -upgrade` and review a plan before applying. Inputs, outputs and managed resource addresses retain their existing names. Check [CHANGELOG.md](CHANGELOG.md) for changes since the latest release.

## Training and Related Resources

- [OCI MySQL HeatWave course](https://foggykitchen.com/courses/oci-mysql-heatwave-course/)
- [Training guide and eight lessons](training/README.md)
- [FoggyKitchen.com](https://foggykitchen.com/)
- [Support policy and commercial help](SUPPORT.md)

## Contributing

Issues and pull requests are welcome. Include a reproducible example and sanitized diagnostics, and run the checks for the affected module and lessons before submitting a change.

## License

Licensed under the **Universal Permissive License (UPL), Version 1.0**. See [LICENSE](LICENSE).

---

© 2026 [FoggyKitchen.com](https://foggykitchen.com) - Cloud. Code. Clarity.
