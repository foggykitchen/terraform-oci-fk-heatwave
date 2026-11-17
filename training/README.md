# OCI MySQL HeatWave Training

These eight lessons accompany the [FoggyKitchen OCI MySQL HeatWave course](https://foggykitchen.com/courses/oci-mysql-heatwave-course/). They progress from a MySQL DB system to HeatWave acceleration, WordPress, backups, cross-region replication, high availability and read replicas.

The [root module](../README.md) remains a reusable database component. Each lesson directory contains its own configuration, variable template, walkthrough, diagrams and mocked plan test. Keep the whole repository checkout: lesson module calls use `source = "../.."`.

## Lessons

| Lesson | Scenario |
|---|---|
| [1. Free Tier MySQL](lesson1_free_tier_mds) | DB system and module-managed networking |
| [2. Public access through a bastion](lesson2_free_tier_mds_with_public_access) | Public bastion and private database subnet |
| [3. HeatWave cluster](lesson3_free_tier_mds_with_heatwave_cluster) | MySQL with query acceleration |
| [4. WordPress](lesson4_free_tier_mds_with_wordpress) | WordPress application backed by MySQL |
| [5. Manual and cross-region backups](lesson5_mds_manual_backups_with_wordpress) | Create a backup, copy it to another region and restore a DB system |
| [6. Replication channel](lesson6_mds_channel_with_wordpress) | Configure a replication user and cross-region replication |
| [7. High availability](lesson7_ha_mds_with_ha_wordpress) | Highly available MySQL and WordPress |
| [8. Read replicas](lesson8_mds_with_replicas) | Replica configuration for read workloads |

Lessons build on earlier concepts, but their directories are separate configurations. Use a separate state per lesson. Follow the staged variable changes in lessons 5 and 6; later steps depend on backups or target databases created earlier in the walkthrough.

## Prerequisites

- Terraform / OpenTofu >= 1.11.0; CI uses OpenTofu 1.11.6.
- OCI provider >= 9.12.1, < 10.0.0; CI uses 9.12.1.
- An OCI tenancy, compartment, credentials, required IAM permissions and sufficient service limits.
- Region and availability-domain values appropriate to your tenancy; two regions for cross-region examples.
- SSH access where a lesson uses a bastion or application host.

Free Tier names reflect the course scenarios. Check eligibility, regional capacity and the costs of all resources before applying, including NAT gateways, compute, backups and paid database shapes.

## Run a Lesson

```bash
git clone https://github.com/foggykitchen/terraform-oci-fk-heatwave.git
cd terraform-oci-fk-heatwave/training/lesson1_free_tier_mds
cp terraform.tfvars.example terraform.tfvars
```

Edit the local `terraform.tfvars` with your values. Keep passwords and private keys out of source control. Then:

```bash
tofu init
tofu validate
tofu plan -out=lesson.tfplan
# After reviewing the plan:
tofu apply lesson.tfplan
```

The `_NEW.tf` and `_UPDATED.tf` suffixes explain changes between lessons. OpenTofu loads them as normal `.tf` files. Files ending `_DELETED.tf` are retained as course markers; do not rename or copy files from another lesson on top of the current directory.

The lesson READMEs retain the original screenshots, staged instructions and console transcripts. Those transcripts are historical examples, not expected output for OCI 9. Use the current `.tf` files and variable templates as the configuration source of truth. The historical Resource Manager ZIP buttons are not a validated path for the current checkout; use the CLI workflow above.

When finished, review `tofu plan -destroy`, then use `tofu destroy` in that lesson's directory if you intend to remove its resources. This deletes the lesson's managed infrastructure and may remove its databases and backups.

## Validate Without Deploying

Run from the repository root:

```bash
python3 scripts/oci9_check.py --root .
for lesson in training/lesson*/; do
  python3 scripts/oci9_check.py --root "$lesson" || exit 1
done
```

The helper works in a temporary copy with synthetic identifiers. It runs formatting, initialization, validation and plan-only mocked tests. These checks require provider and dependency downloads, but do not contact OCI APIs or execute SSH provisioners. They do not certify runtime behavior or all staged combinations of lesson flags.

Lessons 4–7 compose WordPress using the existing commit-pinned dependency. That dependency still uses the retired `hashicorp/template` provider, which has no native macOS ARM package. Run those lessons on Linux AMD64, as in CI, or with a macOS AMD64 build of OpenTofu under Rosetta. The root HeatWave module does not require the template provider. Use `--modules-dir /path/to/checkouts` only when deliberately testing local dependency changes.

## Support and License

See the [support policy](../SUPPORT.md) for best-effort community support and commercial help, and [LICENSE](../LICENSE) for the Universal Permissive License (UPL), Version 1.0.

---

© 2026 [FoggyKitchen.com](https://foggykitchen.com) - Cloud. Code. Clarity.
