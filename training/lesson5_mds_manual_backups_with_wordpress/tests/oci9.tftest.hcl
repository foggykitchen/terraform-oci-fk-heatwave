# Synthetic fixtures only. Every run is plan-only; no tenancy credentials are used.
mock_provider "null" {
}
mock_provider "oci" {
  mock_data "oci_computeinstanceagent_instance_agent_plugins" {
    defaults = { "id" = "MOCK_OCID_PLUGINS", "instance_agent_plugins" = [{ "message" = "mock-value", "name" = "compatibility", "status" = "mock-value", "time_last_updated_utc" = "mock-value" }] }
  }
  mock_data "oci_core_images" {
    defaults = { "id" = "MOCK_OCID_IMAGES", "images" = [{ "agent_features" = [{ "is_management_supported" = false, "is_monitoring_supported" = false }], "base_image_id" = "MOCK_OCID_MOCK", "billable_size_in_gbs" = "mock-value", "compartment_id" = "MOCK_OCID_COMPARTMENT", "create_image_allowed" = false, "defined_tags" = {}, "display_name" = "Oracle-Linux-9", "freeform_tags" = {}, "id" = "MOCK_OCID_IMAGE", "image_source_details" = [{ "bucket_name" = "mock-value", "namespace_name" = "mock-value", "object_name" = "mock-value", "operating_system" = "mock-value", "operating_system_version" = "mock-value", "source_image_type" = "mock-value", "source_type" = "mock-value", "source_uri" = "mock-value" }], "instance_id" = "MOCK_OCID_MOCK", "launch_mode" = "mock-value", "launch_options" = [{ "boot_volume_type" = "mock-value", "firmware" = "mock-value", "is_consistent_volume_naming_enabled" = false, "is_pv_encryption_in_transit_enabled" = false, "network_type" = "mock-value", "remote_data_volume_type" = "mock-value" }], "listing_type" = "mock-value", "operating_system" = "Oracle Linux", "operating_system_version" = "9", "size_in_mbs" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }] }
  }
  mock_data "oci_core_private_ips" {
    defaults = { "id" = "MOCK_OCID_IPS", "private_ips" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "cidr_prefix_length" = 1, "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_MOCK", "ip_address" = "10.0.0.10", "ip_state" = "mock-value", "ipv4subnet_cidr_at_creation" = "mock-value", "is_primary" = false, "is_reserved" = false, "lifetime" = "mock-value", "route_table_id" = "MOCK_OCID_MOCK", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK", "vnic_id" = "MOCK_OCID_MOCK" }] }
  }
  mock_data "oci_core_subnet" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "cidr_block" = "10.0.0.0/24", "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "dhcp_options_id" = "MOCK_OCID_MOCK", "display_name" = "compatibility", "dns_label" = "mock-value", "freeform_tags" = {}, "id" = "MOCK_OCID_SUBNET", "ipv4cidr_blocks" = ["mock-value"], "ipv6cidr_block" = "mock-value", "ipv6cidr_blocks" = ["mock-value"], "ipv6virtual_router_ip" = "mock-value", "prohibit_internet_ingress" = false, "prohibit_public_ip_on_vnic" = false, "route_table_id" = "MOCK_OCID_MOCK", "security_list_ids" = ["mock-value"], "state" = "AVAILABLE", "subnet_domain_name" = "mock-value", "time_created" = "mock-value", "vcn_id" = "MOCK_OCID_MOCK", "virtual_router_ip" = "mock-value", "virtual_router_mac" = "mock-value" }
  }
  mock_data "oci_core_vnic" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_VNIC", "ipv6addresses" = ["mock-value"], "is_primary" = false, "mac_address" = "mock-value", "nsg_ids" = ["mock-value"], "private_ip_address" = "10.0.0.10", "public_ip_address" = "10.0.0.10", "route_table_id" = "MOCK_OCID_MOCK", "security_attributes" = {}, "skip_source_dest_check" = false, "state" = "AVAILABLE", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK" }
  }
  mock_data "oci_core_vnic_attachments" {
    defaults = { "id" = "MOCK_OCID_ATTACHMENTS", "vnic_attachments" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "create_vnic_details" = [{ "assign_ipv6ip" = false, "assign_private_dns_record" = false, "assign_public_ip" = "mock-value", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "ipv6address_ipv6subnet_cidr_pair_details" = [], "nsg_ids" = [], "private_ip" = "10.0.0.10", "private_ip_id" = "MOCK_OCID_MOCK", "route_table_id" = "MOCK_OCID_MOCK", "security_attributes" = {}, "skip_source_dest_check" = false, "subnet_cidr" = "mock-value", "subnet_id" = "MOCK_OCID_SUBNET", "vlan_id" = "MOCK_OCID_MOCK" }], "display_name" = "compatibility", "id" = "MOCK_OCID_MOCK", "instance_id" = "MOCK_OCID_MOCK", "nic_index" = 1, "state" = "AVAILABLE", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK", "vlan_tag" = 1, "vnic_id" = "MOCK_OCID_MOCK" }] }
  }
  mock_data "oci_identity_availability_domains" {
    defaults = { "availability_domains" = [{ "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-1" }, { "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-2" }, { "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-3" }], "id" = "MOCK_OCID_DOMAINS" }
  }
  mock_resource "oci_bastion_bastion" {
    defaults = { "id" = "MOCK_OCID_BASTION", "lifecycle_details" = "mock-value", "max_sessions_allowed" = 1, "private_endpoint_ip_address" = "10.0.0.10", "state" = "AVAILABLE", "system_tags" = {}, "target_vcn_id" = "MOCK_OCID_MOCK", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_bastion_session" {
    defaults = { "bastion_name" = "mock-value", "bastion_public_host_key_info" = "mock-value", "bastion_user_name" = "mock-value", "id" = "MOCK_OCID_SESSION", "lifecycle_details" = "mock-value", "ssh_metadata" = {}, "state" = "AVAILABLE", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_core_default_security_list" {
    defaults = { "id" = "MOCK_OCID_LIST", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_image" {
    defaults = { "agent_features" = [{ "is_management_supported" = false, "is_monitoring_supported" = false }], "base_image_id" = "MOCK_OCID_MOCK", "billable_size_in_gbs" = "mock-value", "create_image_allowed" = false, "id" = "MOCK_OCID_IMAGE", "launch_options" = [{ "boot_volume_type" = "mock-value", "firmware" = "mock-value", "is_consistent_volume_naming_enabled" = false, "is_pv_encryption_in_transit_enabled" = false, "network_type" = "mock-value", "remote_data_volume_type" = "mock-value" }], "listing_type" = "mock-value", "operating_system" = "mock-value", "operating_system_version" = "mock-value", "size_in_mbs" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_instance" {
    defaults = { "boot_volume_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_INSTANCE", "is_cross_numa_node" = false, "launch_mode" = "mock-value", "private_ip" = "10.0.0.10", "public_ip" = "mock-value", "region" = "eu-frankfurt-1", "security_attributes_state" = "mock-value", "system_tags" = {}, "time_created" = "mock-value", "time_maintenance_reboot_due" = "mock-value" }
  }
  mock_resource "oci_core_internet_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_nat_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "nat_ip" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_network_security_group" {
    defaults = { "id" = "MOCK_OCID_GROUP", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_network_security_group_security_rule" {
    defaults = { "id" = "MOCK_OCID_RULE", "is_valid" = false, "time_created" = "mock-value" }
  }
  mock_resource "oci_core_public_ip" {
    defaults = { "assigned_entity_id" = "MOCK_OCID_MOCK", "assigned_entity_type" = "mock-value", "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "id" = "MOCK_OCID_IP", "ip_address" = "10.0.0.10", "scope" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
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
  mock_resource "oci_file_storage_export" {
    defaults = { "id" = "MOCK_OCID_EXPORT", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_file_storage_export_set" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_SET", "state" = "AVAILABLE", "time_created" = "mock-value", "vcn_id" = "MOCK_OCID_MOCK" }
  }
  mock_resource "oci_file_storage_file_system" {
    defaults = { "clone_count" = 1, "compartment_quota_enforcement_state" = "mock-value", "id" = "MOCK_OCID_SYSTEM", "is_clone_parent" = false, "is_hydrated" = false, "is_targetable" = false, "lifecycle_details" = "mock-value", "metered_bytes" = "mock-value", "quota_enforcement_state" = "mock-value", "replication_source_count" = 1, "replication_target_id" = "MOCK_OCID_MOCK", "source_details" = [{ "parent_file_system_id" = "MOCK_OCID_MOCK", "source_snapshot_id" = "MOCK_OCID_MOCK" }], "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value" }
  }
  mock_resource "oci_file_storage_mount_target" {
    defaults = { "export_set_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_TARGET", "lifecycle_details" = "mock-value", "mount_target_ipv6ids" = ["mock-value"], "observed_throughput" = "mock-value", "private_ip_ids" = ["mock-value"], "reserved_storage_capacity" = "mock-value", "state" = "AVAILABLE", "system_tags" = {}, "time_billing_cycle_end" = "mock-value", "time_created" = "mock-value" }
  }
  mock_resource "oci_load_balancer" {
    defaults = { "id" = "MOCK_OCID_BALANCER", "ip_address_details" = [{ "ip_address" = "10.0.0.10", "is_public" = false, "reserved_ip" = [{ "id" = "MOCK_OCID_MOCK" }] }], "ip_addresses" = ["mock-value"], "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value" }
  }
  mock_resource "oci_load_balancer_backend" {
    defaults = { "id" = "MOCK_OCID_BACKEND", "name" = "compatibility", "state" = "AVAILABLE" }
  }
  mock_resource "oci_load_balancer_backend_set" {
    defaults = { "backend" = [{ "backup" = false, "drain" = false, "ip_address" = "10.0.0.10", "max_connections" = 1, "name" = "compatibility", "offline" = false, "port" = 1, "weight" = 1 }], "id" = "MOCK_OCID_SET", "state" = "AVAILABLE" }
  }
  mock_resource "oci_load_balancer_listener" {
    defaults = { "id" = "MOCK_OCID_LISTENER", "state" = "AVAILABLE" }
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
mock_provider "template" {
}
mock_provider "time" {
}
mock_provider "tls" {
}
mock_provider "oci" {
  alias = "region1"
  mock_data "oci_computeinstanceagent_instance_agent_plugins" {
    defaults = { "id" = "MOCK_OCID_PLUGINS", "instance_agent_plugins" = [{ "message" = "mock-value", "name" = "compatibility", "status" = "mock-value", "time_last_updated_utc" = "mock-value" }] }
  }
  mock_data "oci_core_images" {
    defaults = { "id" = "MOCK_OCID_IMAGES", "images" = [{ "agent_features" = [{ "is_management_supported" = false, "is_monitoring_supported" = false }], "base_image_id" = "MOCK_OCID_MOCK", "billable_size_in_gbs" = "mock-value", "compartment_id" = "MOCK_OCID_COMPARTMENT", "create_image_allowed" = false, "defined_tags" = {}, "display_name" = "Oracle-Linux-9", "freeform_tags" = {}, "id" = "MOCK_OCID_IMAGE", "image_source_details" = [{ "bucket_name" = "mock-value", "namespace_name" = "mock-value", "object_name" = "mock-value", "operating_system" = "mock-value", "operating_system_version" = "mock-value", "source_image_type" = "mock-value", "source_type" = "mock-value", "source_uri" = "mock-value" }], "instance_id" = "MOCK_OCID_MOCK", "launch_mode" = "mock-value", "launch_options" = [{ "boot_volume_type" = "mock-value", "firmware" = "mock-value", "is_consistent_volume_naming_enabled" = false, "is_pv_encryption_in_transit_enabled" = false, "network_type" = "mock-value", "remote_data_volume_type" = "mock-value" }], "listing_type" = "mock-value", "operating_system" = "Oracle Linux", "operating_system_version" = "9", "size_in_mbs" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }] }
  }
  mock_data "oci_core_private_ips" {
    defaults = { "id" = "MOCK_OCID_IPS", "private_ips" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "cidr_prefix_length" = 1, "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_MOCK", "ip_address" = "10.0.0.10", "ip_state" = "mock-value", "ipv4subnet_cidr_at_creation" = "mock-value", "is_primary" = false, "is_reserved" = false, "lifetime" = "mock-value", "route_table_id" = "MOCK_OCID_MOCK", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK", "vnic_id" = "MOCK_OCID_MOCK" }] }
  }
  mock_data "oci_core_subnet" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "cidr_block" = "10.0.0.0/24", "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "dhcp_options_id" = "MOCK_OCID_MOCK", "display_name" = "compatibility", "dns_label" = "mock-value", "freeform_tags" = {}, "id" = "MOCK_OCID_SUBNET", "ipv4cidr_blocks" = ["mock-value"], "ipv6cidr_block" = "mock-value", "ipv6cidr_blocks" = ["mock-value"], "ipv6virtual_router_ip" = "mock-value", "prohibit_internet_ingress" = false, "prohibit_public_ip_on_vnic" = false, "route_table_id" = "MOCK_OCID_MOCK", "security_list_ids" = ["mock-value"], "state" = "AVAILABLE", "subnet_domain_name" = "mock-value", "time_created" = "mock-value", "vcn_id" = "MOCK_OCID_MOCK", "virtual_router_ip" = "mock-value", "virtual_router_mac" = "mock-value" }
  }
  mock_data "oci_core_vnic" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_VNIC", "ipv6addresses" = ["mock-value"], "is_primary" = false, "mac_address" = "mock-value", "nsg_ids" = ["mock-value"], "private_ip_address" = "10.0.0.10", "public_ip_address" = "10.0.0.10", "route_table_id" = "MOCK_OCID_MOCK", "security_attributes" = {}, "skip_source_dest_check" = false, "state" = "AVAILABLE", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK" }
  }
  mock_data "oci_core_vnic_attachments" {
    defaults = { "id" = "MOCK_OCID_ATTACHMENTS", "vnic_attachments" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "create_vnic_details" = [{ "assign_ipv6ip" = false, "assign_private_dns_record" = false, "assign_public_ip" = "mock-value", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "ipv6address_ipv6subnet_cidr_pair_details" = [], "nsg_ids" = [], "private_ip" = "10.0.0.10", "private_ip_id" = "MOCK_OCID_MOCK", "route_table_id" = "MOCK_OCID_MOCK", "security_attributes" = {}, "skip_source_dest_check" = false, "subnet_cidr" = "mock-value", "subnet_id" = "MOCK_OCID_SUBNET", "vlan_id" = "MOCK_OCID_MOCK" }], "display_name" = "compatibility", "id" = "MOCK_OCID_MOCK", "instance_id" = "MOCK_OCID_MOCK", "nic_index" = 1, "state" = "AVAILABLE", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK", "vlan_tag" = 1, "vnic_id" = "MOCK_OCID_MOCK" }] }
  }
  mock_data "oci_identity_availability_domains" {
    defaults = { "availability_domains" = [{ "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-1" }, { "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-2" }, { "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-3" }], "id" = "MOCK_OCID_DOMAINS" }
  }
  mock_resource "oci_bastion_bastion" {
    defaults = { "id" = "MOCK_OCID_BASTION", "lifecycle_details" = "mock-value", "max_sessions_allowed" = 1, "private_endpoint_ip_address" = "10.0.0.10", "state" = "AVAILABLE", "system_tags" = {}, "target_vcn_id" = "MOCK_OCID_MOCK", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_bastion_session" {
    defaults = { "bastion_name" = "mock-value", "bastion_public_host_key_info" = "mock-value", "bastion_user_name" = "mock-value", "id" = "MOCK_OCID_SESSION", "lifecycle_details" = "mock-value", "ssh_metadata" = {}, "state" = "AVAILABLE", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_core_default_security_list" {
    defaults = { "id" = "MOCK_OCID_LIST", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_image" {
    defaults = { "agent_features" = [{ "is_management_supported" = false, "is_monitoring_supported" = false }], "base_image_id" = "MOCK_OCID_MOCK", "billable_size_in_gbs" = "mock-value", "create_image_allowed" = false, "id" = "MOCK_OCID_IMAGE", "launch_options" = [{ "boot_volume_type" = "mock-value", "firmware" = "mock-value", "is_consistent_volume_naming_enabled" = false, "is_pv_encryption_in_transit_enabled" = false, "network_type" = "mock-value", "remote_data_volume_type" = "mock-value" }], "listing_type" = "mock-value", "operating_system" = "mock-value", "operating_system_version" = "mock-value", "size_in_mbs" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_instance" {
    defaults = { "boot_volume_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_INSTANCE", "is_cross_numa_node" = false, "launch_mode" = "mock-value", "private_ip" = "10.0.0.10", "public_ip" = "mock-value", "region" = "eu-frankfurt-1", "security_attributes_state" = "mock-value", "system_tags" = {}, "time_created" = "mock-value", "time_maintenance_reboot_due" = "mock-value" }
  }
  mock_resource "oci_core_internet_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_nat_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "nat_ip" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_network_security_group" {
    defaults = { "id" = "MOCK_OCID_GROUP", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_network_security_group_security_rule" {
    defaults = { "id" = "MOCK_OCID_RULE", "is_valid" = false, "time_created" = "mock-value" }
  }
  mock_resource "oci_core_public_ip" {
    defaults = { "assigned_entity_id" = "MOCK_OCID_MOCK", "assigned_entity_type" = "mock-value", "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "id" = "MOCK_OCID_IP", "ip_address" = "10.0.0.10", "scope" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
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
  mock_resource "oci_file_storage_export" {
    defaults = { "id" = "MOCK_OCID_EXPORT", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_file_storage_export_set" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_SET", "state" = "AVAILABLE", "time_created" = "mock-value", "vcn_id" = "MOCK_OCID_MOCK" }
  }
  mock_resource "oci_file_storage_file_system" {
    defaults = { "clone_count" = 1, "compartment_quota_enforcement_state" = "mock-value", "id" = "MOCK_OCID_SYSTEM", "is_clone_parent" = false, "is_hydrated" = false, "is_targetable" = false, "lifecycle_details" = "mock-value", "metered_bytes" = "mock-value", "quota_enforcement_state" = "mock-value", "replication_source_count" = 1, "replication_target_id" = "MOCK_OCID_MOCK", "source_details" = [{ "parent_file_system_id" = "MOCK_OCID_MOCK", "source_snapshot_id" = "MOCK_OCID_MOCK" }], "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value" }
  }
  mock_resource "oci_file_storage_mount_target" {
    defaults = { "export_set_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_TARGET", "lifecycle_details" = "mock-value", "mount_target_ipv6ids" = ["mock-value"], "observed_throughput" = "mock-value", "private_ip_ids" = ["mock-value"], "reserved_storage_capacity" = "mock-value", "state" = "AVAILABLE", "system_tags" = {}, "time_billing_cycle_end" = "mock-value", "time_created" = "mock-value" }
  }
  mock_resource "oci_load_balancer" {
    defaults = { "id" = "MOCK_OCID_BALANCER", "ip_address_details" = [{ "ip_address" = "10.0.0.10", "is_public" = false, "reserved_ip" = [{ "id" = "MOCK_OCID_MOCK" }] }], "ip_addresses" = ["mock-value"], "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value" }
  }
  mock_resource "oci_load_balancer_backend" {
    defaults = { "id" = "MOCK_OCID_BACKEND", "name" = "compatibility", "state" = "AVAILABLE" }
  }
  mock_resource "oci_load_balancer_backend_set" {
    defaults = { "backend" = [{ "backup" = false, "drain" = false, "ip_address" = "10.0.0.10", "max_connections" = 1, "name" = "compatibility", "offline" = false, "port" = 1, "weight" = 1 }], "id" = "MOCK_OCID_SET", "state" = "AVAILABLE" }
  }
  mock_resource "oci_load_balancer_listener" {
    defaults = { "id" = "MOCK_OCID_LISTENER", "state" = "AVAILABLE" }
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
mock_provider "oci" {
  alias = "region2"
  mock_data "oci_computeinstanceagent_instance_agent_plugins" {
    defaults = { "id" = "MOCK_OCID_PLUGINS", "instance_agent_plugins" = [{ "message" = "mock-value", "name" = "compatibility", "status" = "mock-value", "time_last_updated_utc" = "mock-value" }] }
  }
  mock_data "oci_core_images" {
    defaults = { "id" = "MOCK_OCID_IMAGES", "images" = [{ "agent_features" = [{ "is_management_supported" = false, "is_monitoring_supported" = false }], "base_image_id" = "MOCK_OCID_MOCK", "billable_size_in_gbs" = "mock-value", "compartment_id" = "MOCK_OCID_COMPARTMENT", "create_image_allowed" = false, "defined_tags" = {}, "display_name" = "Oracle-Linux-9", "freeform_tags" = {}, "id" = "MOCK_OCID_IMAGE", "image_source_details" = [{ "bucket_name" = "mock-value", "namespace_name" = "mock-value", "object_name" = "mock-value", "operating_system" = "mock-value", "operating_system_version" = "mock-value", "source_image_type" = "mock-value", "source_type" = "mock-value", "source_uri" = "mock-value" }], "instance_id" = "MOCK_OCID_MOCK", "launch_mode" = "mock-value", "launch_options" = [{ "boot_volume_type" = "mock-value", "firmware" = "mock-value", "is_consistent_volume_naming_enabled" = false, "is_pv_encryption_in_transit_enabled" = false, "network_type" = "mock-value", "remote_data_volume_type" = "mock-value" }], "listing_type" = "mock-value", "operating_system" = "Oracle Linux", "operating_system_version" = "9", "size_in_mbs" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }] }
  }
  mock_data "oci_core_private_ips" {
    defaults = { "id" = "MOCK_OCID_IPS", "private_ips" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "cidr_prefix_length" = 1, "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_MOCK", "ip_address" = "10.0.0.10", "ip_state" = "mock-value", "ipv4subnet_cidr_at_creation" = "mock-value", "is_primary" = false, "is_reserved" = false, "lifetime" = "mock-value", "route_table_id" = "MOCK_OCID_MOCK", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK", "vnic_id" = "MOCK_OCID_MOCK" }] }
  }
  mock_data "oci_core_subnet" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "cidr_block" = "10.0.0.0/24", "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "dhcp_options_id" = "MOCK_OCID_MOCK", "display_name" = "compatibility", "dns_label" = "mock-value", "freeform_tags" = {}, "id" = "MOCK_OCID_SUBNET", "ipv4cidr_blocks" = ["mock-value"], "ipv6cidr_block" = "mock-value", "ipv6cidr_blocks" = ["mock-value"], "ipv6virtual_router_ip" = "mock-value", "prohibit_internet_ingress" = false, "prohibit_public_ip_on_vnic" = false, "route_table_id" = "MOCK_OCID_MOCK", "security_list_ids" = ["mock-value"], "state" = "AVAILABLE", "subnet_domain_name" = "mock-value", "time_created" = "mock-value", "vcn_id" = "MOCK_OCID_MOCK", "virtual_router_ip" = "mock-value", "virtual_router_mac" = "mock-value" }
  }
  mock_data "oci_core_vnic" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "id" = "MOCK_OCID_VNIC", "ipv6addresses" = ["mock-value"], "is_primary" = false, "mac_address" = "mock-value", "nsg_ids" = ["mock-value"], "private_ip_address" = "10.0.0.10", "public_ip_address" = "10.0.0.10", "route_table_id" = "MOCK_OCID_MOCK", "security_attributes" = {}, "skip_source_dest_check" = false, "state" = "AVAILABLE", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK" }
  }
  mock_data "oci_core_vnic_attachments" {
    defaults = { "id" = "MOCK_OCID_ATTACHMENTS", "vnic_attachments" = [{ "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "create_vnic_details" = [{ "assign_ipv6ip" = false, "assign_private_dns_record" = false, "assign_public_ip" = "mock-value", "defined_tags" = {}, "display_name" = "compatibility", "freeform_tags" = {}, "hostname_label" = "mock-value", "ipv6address_ipv6subnet_cidr_pair_details" = [], "nsg_ids" = [], "private_ip" = "10.0.0.10", "private_ip_id" = "MOCK_OCID_MOCK", "route_table_id" = "MOCK_OCID_MOCK", "security_attributes" = {}, "skip_source_dest_check" = false, "subnet_cidr" = "mock-value", "subnet_id" = "MOCK_OCID_SUBNET", "vlan_id" = "MOCK_OCID_MOCK" }], "display_name" = "compatibility", "id" = "MOCK_OCID_MOCK", "instance_id" = "MOCK_OCID_MOCK", "nic_index" = 1, "state" = "AVAILABLE", "subnet_id" = "MOCK_OCID_SUBNET", "time_created" = "mock-value", "vlan_id" = "MOCK_OCID_MOCK", "vlan_tag" = 1, "vnic_id" = "MOCK_OCID_MOCK" }] }
  }
  mock_data "oci_identity_availability_domains" {
    defaults = { "availability_domains" = [{ "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-1" }, { "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-2" }, { "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_MOCK", "name" = "MOCK:EU-FRANKFURT-1-AD-3" }], "id" = "MOCK_OCID_DOMAINS" }
  }
  mock_resource "oci_bastion_bastion" {
    defaults = { "id" = "MOCK_OCID_BASTION", "lifecycle_details" = "mock-value", "max_sessions_allowed" = 1, "private_endpoint_ip_address" = "10.0.0.10", "state" = "AVAILABLE", "system_tags" = {}, "target_vcn_id" = "MOCK_OCID_MOCK", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_bastion_session" {
    defaults = { "bastion_name" = "mock-value", "bastion_public_host_key_info" = "mock-value", "bastion_user_name" = "mock-value", "id" = "MOCK_OCID_SESSION", "lifecycle_details" = "mock-value", "ssh_metadata" = {}, "state" = "AVAILABLE", "time_created" = "mock-value", "time_updated" = "mock-value" }
  }
  mock_resource "oci_core_default_security_list" {
    defaults = { "id" = "MOCK_OCID_LIST", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_image" {
    defaults = { "agent_features" = [{ "is_management_supported" = false, "is_monitoring_supported" = false }], "base_image_id" = "MOCK_OCID_MOCK", "billable_size_in_gbs" = "mock-value", "create_image_allowed" = false, "id" = "MOCK_OCID_IMAGE", "launch_options" = [{ "boot_volume_type" = "mock-value", "firmware" = "mock-value", "is_consistent_volume_naming_enabled" = false, "is_pv_encryption_in_transit_enabled" = false, "network_type" = "mock-value", "remote_data_volume_type" = "mock-value" }], "listing_type" = "mock-value", "operating_system" = "mock-value", "operating_system_version" = "mock-value", "size_in_mbs" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_instance" {
    defaults = { "boot_volume_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_INSTANCE", "is_cross_numa_node" = false, "launch_mode" = "mock-value", "private_ip" = "10.0.0.10", "public_ip" = "mock-value", "region" = "eu-frankfurt-1", "security_attributes_state" = "mock-value", "system_tags" = {}, "time_created" = "mock-value", "time_maintenance_reboot_due" = "mock-value" }
  }
  mock_resource "oci_core_internet_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_nat_gateway" {
    defaults = { "id" = "MOCK_OCID_GATEWAY", "nat_ip" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_network_security_group" {
    defaults = { "id" = "MOCK_OCID_GROUP", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_core_network_security_group_security_rule" {
    defaults = { "id" = "MOCK_OCID_RULE", "is_valid" = false, "time_created" = "mock-value" }
  }
  mock_resource "oci_core_public_ip" {
    defaults = { "assigned_entity_id" = "MOCK_OCID_MOCK", "assigned_entity_type" = "mock-value", "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "id" = "MOCK_OCID_IP", "ip_address" = "10.0.0.10", "scope" = "mock-value", "state" = "AVAILABLE", "time_created" = "mock-value" }
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
  mock_resource "oci_file_storage_export" {
    defaults = { "id" = "MOCK_OCID_EXPORT", "state" = "AVAILABLE", "time_created" = "mock-value" }
  }
  mock_resource "oci_file_storage_export_set" {
    defaults = { "availability_domain" = "MOCK:EU-FRANKFURT-1-AD-1", "compartment_id" = "MOCK_OCID_COMPARTMENT", "id" = "MOCK_OCID_SET", "state" = "AVAILABLE", "time_created" = "mock-value", "vcn_id" = "MOCK_OCID_MOCK" }
  }
  mock_resource "oci_file_storage_file_system" {
    defaults = { "clone_count" = 1, "compartment_quota_enforcement_state" = "mock-value", "id" = "MOCK_OCID_SYSTEM", "is_clone_parent" = false, "is_hydrated" = false, "is_targetable" = false, "lifecycle_details" = "mock-value", "metered_bytes" = "mock-value", "quota_enforcement_state" = "mock-value", "replication_source_count" = 1, "replication_target_id" = "MOCK_OCID_MOCK", "source_details" = [{ "parent_file_system_id" = "MOCK_OCID_MOCK", "source_snapshot_id" = "MOCK_OCID_MOCK" }], "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value" }
  }
  mock_resource "oci_file_storage_mount_target" {
    defaults = { "export_set_id" = "MOCK_OCID_MOCK", "id" = "MOCK_OCID_TARGET", "lifecycle_details" = "mock-value", "mount_target_ipv6ids" = ["mock-value"], "observed_throughput" = "mock-value", "private_ip_ids" = ["mock-value"], "reserved_storage_capacity" = "mock-value", "state" = "AVAILABLE", "system_tags" = {}, "time_billing_cycle_end" = "mock-value", "time_created" = "mock-value" }
  }
  mock_resource "oci_load_balancer" {
    defaults = { "id" = "MOCK_OCID_BALANCER", "ip_address_details" = [{ "ip_address" = "10.0.0.10", "is_public" = false, "reserved_ip" = [{ "id" = "MOCK_OCID_MOCK" }] }], "ip_addresses" = ["mock-value"], "state" = "AVAILABLE", "system_tags" = {}, "time_created" = "mock-value" }
  }
  mock_resource "oci_load_balancer_backend" {
    defaults = { "id" = "MOCK_OCID_BACKEND", "name" = "compatibility", "state" = "AVAILABLE" }
  }
  mock_resource "oci_load_balancer_backend_set" {
    defaults = { "backend" = [{ "backup" = false, "drain" = false, "ip_address" = "10.0.0.10", "max_connections" = 1, "name" = "compatibility", "offline" = false, "port" = 1, "weight" = 1 }], "id" = "MOCK_OCID_SET", "state" = "AVAILABLE" }
  }
  mock_resource "oci_load_balancer_listener" {
    defaults = { "id" = "MOCK_OCID_LISTENER", "state" = "AVAILABLE" }
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
  tenancy_ocid             = "MOCK_OCID_TENANCY"
  user_ocid                = "MOCK_OCID_MOCK"
  private_key_path         = "/unused-by-mock"
  region                   = "eu-frankfurt-1"
  fingerprint              = "compatibility"
  mds_compartment_ocid     = "MOCK_OCID_COMPARTMENT"
  mds_admin_password       = "MockOnlyPassword123!"
  mds_availability_domain  = "MOCK:EU-FRANKFURT-1-AD-1"
  mds_availability_domain2 = "MOCK:EU-FRANKFURT-1-AD-1"
  region2                  = "eu-amsterdam-1"
}

run "oci9_plan" {
  command   = plan
  providers = { null = null, oci = oci, template = template, time = time, tls = tls, oci.region1 = oci.region1, oci.region2 = oci.region2 }
}
