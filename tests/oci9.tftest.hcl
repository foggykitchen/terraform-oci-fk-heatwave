# Synthetic fixtures only. Every run is plan-only; no tenancy credentials are used.
mock_provider "null" {
}
mock_provider "oci" {
  mock_resource "oci_core_default_security_list" {
    defaults = { "id" = "MOCK_OCID_LIST", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_internet_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_nat_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "nat_ip" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_route_table" {
    defaults = { "id" = "MOCK_OCID_TABLE", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_route_table_attachment" {
    defaults = { "id" = "MOCK_OCID_ATTACHMENT" }
  }
  mock_resource "oci_core_security_list" {
    defaults = { "id" = "MOCK_OCID_LIST", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_subnet" {
    defaults = { "id" = "MOCK_OCID_SUBNET", "ipv6virtual_router_ip" = "mock-value", "state" = "AVAILABLE", "subnet_domain_name" = "mock-value", "time_created" = "mock-value", "virtual_router_ip" = "mock-value", "virtual_router_mac" = "mock-value" }
  }
  mock_resource "oci_core_vcn" {
    defaults = { "byoipv6cidr_blocks" = ["mock-value"], "default_dhcp_options_id" = "MOCK_OCID_MOCK", "default_route_table_id" = "MOCK_OCID_MOCK", "default_security_list_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_VCN", "ipv6cidr_blocks" = ["mock-value"], "state" = "AVAILABLE", "time_created" = "mock-value", "vcn_domain_name" = "mock-value" }
  }
  mock_resource "oci_mysql_channel" {
    defaults = { "id" = "MOCK_OCID_CHANNEL", "lifecycle_details" = "mock-value", "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_mysql_heat_wave_cluster" {
    defaults = { "cluster_nodes" = [{ "node_id" = "MOCK_OCID_MOCK", "state" = "AVAILABLE", "time_created" = "mock-value", "time_updated" = "mock-value" }], "id" = "MOCK_OCID_CLUSTER", "lifecycle_details" = "mock-value", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_mysql_mysql_backup" {
    defaults = { "backup_size_in_gbs" = 1, "backup_validation_details" = [{ "backup_preparation_status" = "mock-value", "error_message" = "mock-value", "estimated_restore_duration" = "mock-value", "prepared_backup_details" = [{ "prepared_backup_restore_reduction_in_minutes" = 1, "time_prepared" = "mock-value" }], "time_last_validated" = "mock-value", "validation_status" = "mock-value" }], "creation_type" = "mock-value", "data_storage_size_in_gb" = 1, "db_system_snapshot" = [{ "admin_username" = "mock-value", "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "backup_policy" = [{ "copy_policies" = [], "defined_tags" = {}, "freeform_tags" = {}, "is_enabled" = false, "pitr_policy" = [], "retention_in_days" = 1, "soft_delete" = "mock-value", "window_start_time" = "mock-value" }], "compartment_id" = "MOCK_OCID_COMPARTMENT", "configuration_id" = "MOCK_OCID_MOCK", "crash_recovery" = "mock-value", "data_storage" = [{ "allocated_storage_size_in_gbs" = 1, "data_storage_size_in_gb" = 1, "data_storage_size_limit_in_gbs" = 1, "is_auto_expand_storage_enabled" = false, "max_storage_size_in_gbs" = 1 }], "data_storage_size_in_gb" = 1, "database_console" = [{ "port" = 1, "status" = "mock-value" }], "database_management" = "mock-value", "defined_tags" = {}, "deletion_policy" = [{ "automatic_backup_retention" = "mock-value", "final_backup" = "mock-value", "is_delete_protected" = false }], "description" = "mock-value", "display_name" = "compatibility", "encrypt_data" = [{ "key_generation_type" = "mock-value", "key_id" = "MOCK_OCID_MOCK" }], "endpoints" = [{ "hostname" = "mock-value", "ip_address" = "10.0.0.10", "ip_address_version" = "mock-value", "modes" = [], "port" = 1, "port_x" = 1, "resource_id" = "MOCK_OCID_MOCK", "resource_type" = "mock-value", "status" = "mock-value", "status_details" = "mock-value" }], "fault_domain" = "mock-value", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_MOCK", "ip_address" = "10.0.0.10", "ipv6address" = "mock-value", "is_highly_available" = false, "maintenance" = [{ "maintenance_disabled_windows" = [], "maintenance_schedule_type" = "mock-value", "target_version" = "mock-value", "time_scheduled" = "mock-value", "version_preference" = "mock-value", "version_track_preference" = "mock-value", "window_start_time" = "mock-value" }], "mysql_version" = "mock-value", "nsg_ids" = ["mock-value"], "port" = 1, "port_x" = 1, "read_endpoint" = [{ "exclude_ips" = [], "is_enabled" = false, "read_endpoint_hostname_label" = "mock-value", "read_endpoint_ip_address" = "10.0.0.10", "read_endpoint_ipv6address_ipv6subnet_cidr_pair_details" = [] }], "region" = "eu-frankfurt-1", "rest" = [{ "configuration" = "mock-value", "port" = 1 }], "secure_connections" = [{ "certificate_generation_type" = "mock-value", "certificate_id" = "MOCK_OCID_MOCK" }], "security_attributes" = {}, "shape_name" = "mock-value", "subnet_id" = "MOCK_OCID_SUBNET", "telemetry_configuration" = [{ "logs" = [] }] }], "id" = "MOCK_OCID_BACKUP", "immediate_source_backup_id" = "MOCK_OCID_MOCK", "lifecycle_details" = "mock-value", "mysql_version" = "mock-value", "original_source_backup_id" = "MOCK_OCID_MOCK", "shape_name" = "mock-value", "state" = "AVAILABLE", "system_tags" = {}, "time_copy_created" = "mock-value", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_mysql_mysql_configuration" {
    defaults = { "id" = "MOCK_OCID_CONFIGURATION", "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value", "time_updated" = "mock-value", "type" = "mock-value" }
  }
  mock_resource "oci_mysql_mysql_db_system" {
    defaults = { "channels" = [{ "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "id" = "MOCK_OCID_MOCK", "is_enabled" = false, "lifecycle_details" = "mock-value", "source" = [{ "anonymous_transactions_handling" = [], "hostname" = "mock-value", "must_use_ipv6on_dual_stack" = false, "port" = 1, "source_type" = "mock-value", "ssl_ca_certificate" = [], "ssl_mode" = "mock-value", "username" = "mock-value" }], "state" = "AVAILABLE", "system_tags" = {}, "target" = [{ "applier_username" = "mock-value", "channel_name" = "mock-value", "db_system_id" = "MOCK_OCID_MOCK", "delay_in_seconds" = 1, "filters" = [], "tables_without_primary_key_handling" = "mock-value", "target_type" = "mock-value" }], "time_created" = "mock-value", "time_updated" = "mock-value" }], "current_placement" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "fault_domain" = "mock-value" }], "endpoints" = [{ "hostname" = "mock-value", "ip_address" = "10.0.0.10", "ip_address_version" = "mock-value", "modes" = ["mock-value"], "port" = 1, "port_x" = 1, "resource_id" = "MOCK_OCID_MOCK", "resource_type" = "mock-value", "status" = "mock-value", "status_details" = "mock-value" }], "heat_wave_cluster" = [{ "cluster_size" = 1, "is_lakehouse_enabled" = false, "shape_name" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value", "time_updated" = "mock-value" }], "id" = "MOCK_OCID_SYSTEM", "is_heat_wave_cluster_attached" = false, "lifecycle_details" = "mock-value", "point_in_time_recovery_details" = [{ "time_earliest_recovery_point" = "mock-value", "time_latest_recovery_point" = "mock-value" }], "system_tags" = {}, "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_mysql_replica" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "configuration_id" = "MOCK_OCID_MOCK", "encrypt_data" = [{ "key_generation_type" = "mock-value", "key_id" = "MOCK_OCID_MOCK" }], "fault_domain" = "mock-value", "id" = "MOCK_OCID_REPLICA", "ip_address" = "10.0.0.10", "ipv6address" = "mock-value", "lifecycle_details" = "mock-value", "mysql_version" = "mock-value", "nsg_ids" = ["mock-value"], "port" = 1, "port_x" = 1, "secure_connections" = [{ "certificate_generation_type" = "mock-value", "certificate_id" = "MOCK_OCID_MOCK" }], "security_attributes" = {}, "shape_name" = "mock-value", "state" = "AVAILABLE", "telemetry_configuration" = [{ "logs" = [{ "destination" = "mock-value", "destination_configurations" = [], "log_types" = [] }] }], "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
}
variables {
  mds_availability_domain                = "MOCK:EU-FRANKFURT-1-AD-1"
  mds_compartment_ocid                   = "MOCK_OCID_COMPARTMENT"
  subnet_id                              = "MOCK_OCID_SUBNET"
  mds_cross_region_backup_region         = "eu-frankfurt-1"
  mds_cross_region_manual_backup_ocid    = "eu-frankfurt-1"
  mds_defined_source_backup_ocid         = "MOCK_OCID_MOCK"
  mds_defined_source_db_system_ocid      = "MOCK_OCID_MOCK"
  mds_channel_target_db_system_id        = "MOCK_OCID_MOCK"
  mds_replica_source_db_system_id        = "MOCK_OCID_MOCK"
  mds_replica_overrides_configuration_id = "MOCK_OCID_MOCK"
}

run "oci9_plan" {
  command = plan
}

run "existing_subnet" {
  command = plan
  variables {
    use_existing_vcn = true
  }
  assert {
    condition     = length(oci_core_vcn.FoggyKitchenVCN) == 0 && oci_mysql_mysql_db_system.FoggyKitchenMDS[0].subnet_id == var.subnet_id
    error_message = "Existing-subnet mode must reuse the supplied subnet without creating a VCN."
  }
}

run "public_network" {
  command = plan
  variables {
    use_public_subnet = true
    subnet_id         = ""
  }
  assert {
    condition     = length(oci_core_subnet.FoggyKitchenPublicSubnet) == 1 && length(oci_core_subnet.FoggyKitchenPrivateSubnet) == 0 && length(oci_core_nat_gateway.FoggyKitchenNATGateway) == 0
    error_message = "Public-network mode must select the public subnet rather than create private networking."
  }
}

run "heatwave" {
  command = plan
  variables {
    heatwave_cluster_enabled = true
  }
  assert {
    condition     = length(oci_mysql_heat_wave_cluster.FoggyKitchenHeatWave) == 1 && oci_mysql_mysql_db_system.FoggyKitchenMDS[0].data_storage_size_in_gb == 50
    error_message = "Free Tier HeatWave mode must plan a cluster and retain the 50 GB database setting."
  }
}

run "paid_database_backup" {
  command = plan
  variables {
    mds_shape                        = "MySQL.2"
    mds_manual_backup_enabled        = true
    mds_custom_configuration_enabled = true
    mds_backup_policy_is_enabled     = true
  }
  assert {
    condition     = length(oci_mysql_mysql_backup.FoggyKitchenMDSManualBackup) == 1 && length(oci_mysql_mysql_configuration.FoggyKitchenMDSConfiguration) == 1
    error_message = "Paid database mode must plan the requested backup and custom configuration."
  }
}

run "backup_copy" {
  command = plan
  variables {
    use_existing_vcn                       = true
    mds_cross_region_manual_backup_enabled = true
    mds_cross_region_manual_backup_ocid    = "MOCK_OCID_BACKUP"
  }
  assert {
    condition     = length(oci_mysql_mysql_db_system.FoggyKitchenMDS) == 0 && length(oci_mysql_mysql_backup.FoggyKitchenMDSCrossRegionBackup) == 1 && output.mds_database.mds_id == ""
    error_message = "Backup-copy mode must not create or expose a DB system."
  }
}

run "restore_backup" {
  command = plan
  variables {
    mds_shape                  = "MySQL.2"
    mds_defined_source_enabled = true
    mds_defined_source_type    = "BACKUP"
  }
  assert {
    condition     = oci_mysql_mysql_db_system.FoggyKitchenMDS[0].source[0].backup_id == var.mds_defined_source_backup_ocid
    error_message = "Backup restore must use the supplied backup ID."
  }
}

run "channel" {
  command = plan
  variables {
    use_existing_vcn    = true
    mds_channel_enabled = true
  }
  assert {
    condition     = length(oci_mysql_mysql_db_system.FoggyKitchenMDS) == 0 && length(oci_mysql_channel.FoggyKitchenMDSChannel) == 1 && output.mds_database.mds_id == ""
    error_message = "Channel mode must create a channel targeting an existing database."
  }
}

run "replication_user" {
  command = plan
  variables {
    use_existing_vcn                    = true
    mds_channel_repl_user_setup_enabled = true
  }
  assert {
    condition     = length(null_resource.mysqlsh_source_repl_user_setup_with_bastion) == 1 && length(oci_mysql_mysql_db_system.FoggyKitchenMDS) == 0 && output.mds_database.mds_id == ""
    error_message = "Replication-user mode must plan only its provisioner, without creating a DB system."
  }
}

run "replica" {
  command = plan
  variables {
    use_existing_vcn      = true
    mds_replica_enabled   = true
    mds_replica_overrides = true
  }
  assert {
    condition     = length(oci_mysql_mysql_db_system.FoggyKitchenMDS) == 0 && length(oci_mysql_replica.FoggyKitchenMDSReplica) == 1 && output.mds_database.mds_id == ""
    error_message = "Replica mode must create a replica of the supplied source rather than a DB system."
  }
}
