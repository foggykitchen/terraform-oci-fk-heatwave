variable "mds_admin_password" {
  description = "Administrator password for the MySQL DB system."
  type        = string
  sensitive   = true
  default     = ""
}
variable "mds_admin_username" {
  description = "Administrator username for the MySQL DB system."
  type        = string
  default     = "mysql"
}
variable "mds_availability_domain" {
  description = "Availability domain for the MySQL DB system."
  type        = string
  default     = ""
}
variable "mds_compartment_ocid" {
  description = "Compartment OCID for the resources created by this module."
  type        = string
}
variable "heatwave_cluster_enabled" {
  description = "Attach a HeatWave cluster to the DB system created by this module."
  type        = bool
  default     = false
}
variable "mds_shape" {
  description = "MySQL DB system shape. Availability depends on the region and tenancy."
  type        = string
  default     = "MySQL.Free" # MySQL.Free, MySQL.2, MySQL.4, MySQL.8, MySQL.16, MySQL.32, MySQL.64, MySQL.128 , MySQL.256
}
variable "heatwave_shape" {
  description = "HeatWave cluster shape. Availability depends on the region and tenancy."
  type        = string
  default     = "HeatWave.Free" # HeatWave.Free, HeatWave.32GB, HeatWave.512GB
}
variable "heatwave_cluster_size" {
  description = "Number of nodes in the HeatWave cluster."
  type        = number
  default     = 1
}
variable "use_existing_vcn" {
  description = "Skip module-managed networking. Supply subnet_id when creating a DB system."
  type        = bool
  default     = false
}
variable "use_public_subnet" {
  description = "Create a public subnet and internet gateway instead of a private subnet and NAT gateway. Used only when use_existing_vcn is false."
  type        = bool
  default     = false
}
variable "subnet_id" {
  description = "Subnet OCID for the DB system. Required with use_existing_vcn in DB system mode."
  type        = string
  default     = ""
}
variable "mds_backup_policy_is_enabled" {
  description = "Enable automated backups for non-Free DB systems."
  type        = bool
  default     = false
}
variable "mds_backup_policy_retention_in_days" {
  description = "Retention in days for automated backups."
  type        = number
  default     = 31
}
variable "mds_backup_policy_window_start_time" {
  description = "Backup window start time passed to OCI for non-Free shapes when the backup policy is enabled."
  type        = string
  default     = "MONDAY 23:00"
}
variable "mds_data_storage_size_in_gb" {
  description = "Database storage in GB for non-Free shapes. MySQL.Free uses 50 GB."
  type        = number
  default     = 1024 # Must be an integer between 50 and 131,072.
}
variable "mds_defined_tags" {
  description = "Defined tags assigned to supported resources, keyed by namespace and tag name."
  type        = map(string)
  default     = {}

}
variable "mds_description" {
  description = "Description of the MySQL DB system."
  type        = string
  default     = "FoggyKitchen MDS/Heatwave instance"
}
variable "mds_display_name" {
  description = "Display name of the MySQL DB system."
  type        = string
  default     = "FoggyKitchen MDS/Heatwave"
}
variable "mds_fault_domain" {
  description = "Fault domain for the MySQL DB system."
  type        = string
  default     = ""
}
variable "mds_freeform_tags" {
  description = "Free-form tags assigned to supported resources."
  type        = map(string)
  default     = {}
}
variable "mds_hostname_label" {
  description = "Hostname label for the MySQL DB system."
  type        = string
  default     = "fkmds"
}
variable "mds_is_highly_available" {
  description = "Enable high availability for the MySQL DB system."
  type        = bool
  default     = false
}
variable "mds_maintenance_window_start_time" {
  description = "Weekly maintenance window start time passed to OCI, for example MONDAY 23:59."
  type        = string
  default     = "MONDAY 23:59"
}

variable "mds_port" {
  description = "MySQL connection port. Does not change the module-managed security-list ports."
  type        = number
  default     = 3306
}
variable "mds_port_x" {
  description = "MySQL X Protocol port. Does not change the module-managed security-list ports."
  type        = number
  default     = 33060
}

variable "mds_vcn_cidr_block" {
  description = "CIDR block for the module-managed VCN."
  type        = string
  default     = "10.0.0.0/16"
}
variable "mds_vcn_dns_label" {
  description = "DNS label for the module-managed VCN."
  type        = string
  default     = "mdsvcn"
}

variable "mds_vcn_display_name" {
  description = "Display name for the module-managed VCN."
  type        = string
  default     = "FoggyKitchenMDSVCN"
}

variable "mds_subnet_cidr_block" {
  description = "CIDR block for the module-managed subnet."
  type        = string
  default     = "10.0.1.0/24"
}

variable "mds_subnet_display_name" {
  description = "Display name for the module-managed subnet."
  type        = string
  default     = "FoggyKitchenMDSSubnet"
}

variable "mds_manual_backup_enabled" {
  description = "Create a manual backup of the DB system. Skipped for MySQL.Free."
  type        = bool
  default     = false
}

variable "mds_backup_backup_type" {
  description = "Manual backup type passed to OCI, such as FULL or INCREMENTAL."
  type        = string
  default     = "FULL" # FULL or INCREMENTAL
}

variable "mds_backup_description" {
  description = "Description of the manual backup."
  type        = string
  default     = "FoggyKitchen MDS Manual Backup"
}

variable "mds_backup_display_name" {
  description = "Display name of the manual backup."
  type        = string
  default     = "FoggyKitchenMDSManualBackup"
}

variable "mds_backup_retention_in_days" {
  description = "Retention in days for manual backups and cross-region backup copies."
  type        = number
  default     = 31
}

variable "mds_cross_region_manual_backup_enabled" {
  description = "Copy an existing backup into the provider region instead of creating a DB system."
  type        = bool
  default     = false
}

variable "mds_cross_region_backup_region" {
  description = "Source region containing the backup to copy. The provider selects the destination region."
  type        = string
  default     = ""
}

variable "mds_cross_region_manual_backup_ocid" {
  description = "OCID of the source backup to copy into the provider region."
  type        = string
  default     = ""
}

variable "mds_cross_region_backup_description" {
  description = "Description of the cross-region backup copy."
  type        = string
  default     = "FoggyKitchen MDS Cross-Region Backup"
}

variable "mds_cross_region_backup_display_name" {
  description = "Display name of the cross-region backup copy."
  type        = string
  default     = "FoggyKitchenMDSCrossRegionBackup"
}

variable "mds_defined_source_enabled" {
  description = "Enable creation of a DB system from the selected restore source."
  type        = bool
  default     = false
}

variable "mds_defined_source_type" {
  description = "Restore source type. The current implementation creates a source block only for BACKUP."
  type        = string
  default     = "" # BACKUP vs PITR vs IMPORTURL
}

variable "mds_defined_source_backup_ocid" {
  description = "Backup OCID to restore when mds_defined_source_type is BACKUP."
  type        = string
  default     = ""
}

variable "mds_defined_source_db_system_ocid" {
  description = "Reserved DB system OCID for PITR. The current source block supports BACKUP only."
  type        = string
  default     = ""
}

variable "mds_defined_source_db_system_recovery_point" {
  description = "Reserved recovery point for PITR. The current source block supports BACKUP only."
  type        = string
  default     = ""
}

variable "mds_defined_source_par_url" {
  description = "Reserved pre-authenticated import URL. The current source block supports BACKUP only."
  type        = string
  sensitive   = true
  default     = ""
}

variable "mds_custom_configuration_enabled" {
  description = "Create a custom MySQL configuration for a non-Free DB system."
  type        = bool
  default     = false
}
variable "mds_configuration_description" {
  description = "Description of the custom MySQL configuration."
  type        = string
  default     = "FoggyKitchen MDS Custom Configuration"
}

variable "mds_configuration_display_name" {
  description = "Display name of the custom MySQL configuration."
  type        = string
  default     = "FoggyKitchenMDSCustomConfiguration"
}

variable "mds_config_binlog_expire_logs_seconds" {
  description = "Binary log retention in seconds for the custom MySQL configuration."
  type        = string
  default     = "3600" # 60 minutes o binlogs.
}

variable "mds_channel_enabled" {
  description = "Create a replication channel targeting an existing DB system instead of creating a DB system."
  type        = bool
  default     = false
}

variable "mds_channel_display_name" {
  description = "Display name of the replication channel."
  type        = string
  default     = "FoggyKitchenMDSChannel"
}

variable "mds_channel_source_mysql_database_hostname" {
  description = "Hostname or IP address of the source MySQL database."
  type        = string
  default     = ""
}

variable "mds_channel_source_mysql_database_replication_user_name" {
  description = "Replication username on the source MySQL database."
  type        = string
  default     = "repl_user"
}

variable "mds_channel_source_mysql_database_source_type" {
  description = "Replication channel source type."
  type        = string
  default     = "MYSQL"
}

variable "mds_channel_source_mysql_database_ssl_mode" {
  description = "SSL mode used to connect to the replication source."
  type        = string
  default     = "REQUIRED"
}

variable "mds_channel_source_mysql_database_replication_user_password" {
  description = "Password of the replication user on the source MySQL database."
  type        = string
  sensitive   = true
  default     = ""
}

variable "mds_channel_target_target_type" {
  description = "Replication channel target type."
  type        = string
  default     = "DBSYSTEM"
}

variable "mds_channel_target_db_system_id" {
  description = "OCID of the existing target DB system for the replication channel."
  type        = string
  default     = ""
}

variable "mds_channel_target_channel_name" {
  description = "Name of the replication channel on the target DB system."
  type        = string
  default     = "MySQLMDSChannel"
}

variable "mds_channel_target_delay_in_seconds" {
  description = "Replication delay in seconds on the target DB system."
  type        = number
  default     = 60
}

variable "mds_channel_target_tables_without_primary_key_handling" {
  description = "Policy for replicated tables that lack a primary key."
  type        = string
  default     = "GENERATE_IMPLICIT_PRIMARY_KEY"
}

variable "mds_channel_repl_user_setup_enabled" {
  description = "Create a replication user using mysqlsh over SSH on an existing host instead of creating a DB system."
  type        = bool
  default     = false
}

variable "mds_channel_bastion_user" {
  description = "SSH username on the existing host used for replication-user setup."
  type        = string
  default     = "opc"
}

variable "mds_channel_bastion_hostname" {
  description = "Hostname or IP address of the SSH host used for replication-user setup."
  type        = string
  default     = ""
}

variable "mds_channel_bastion_private_key" {
  description = "Private SSH key used to access the replication-user setup host."
  type        = string
  sensitive   = true
  default     = ""
}

variable "mds_channel_source_ip_address_range" {
  description = "MySQL account host pattern for the replication user, for example 10.0.2.%."
  type        = string
  default     = "10.0.2.%"
}

variable "mds_replica_enabled" {
  description = "Create a read replica of an existing DB system instead of creating a DB system."
  type        = bool
  default     = false
}

variable "mds_replica_source_db_system_id" {
  description = "OCID of the existing DB system to replicate."
  type        = string
  default     = ""
}

variable "mds_replica_description" {
  description = "Description of the read replica."
  type        = string
  default     = "FoggyKitchen MDS Replica"
}

variable "mds_replica_display_name" {
  description = "Display name of the read replica."
  type        = string
  default     = "FoggyKitchenMDSReplica"
}

variable "mds_replica_is_delete_protected" {
  description = "Enable deletion protection for the read replica."
  type        = bool
  default     = false
}

variable "mds_replica_overrides" {
  description = "Enable the replica_overrides block for configuration, MySQL version and shape."
  type        = bool
  default     = false
}

variable "mds_replica_overrides_configuration_id" {
  description = "Configuration OCID for replica overrides. An empty value selects a module-created configuration."
  type        = string
  default     = ""
}

variable "replica_replica_overrides_mysql_version" {
  description = "MySQL version override for a replica. The legacy input name is retained for compatibility."
  type        = string
  default     = ""
}

variable "mds_replica_overrides_shape" {
  description = "Shape used by the replica overrides and any module-created replica configuration."
  type        = string
  default     = "MySQL.4" # MySQL.2, MySQL.4, MySQL.8, MySQL.16, MySQL.32, MySQL.64, MySQL.128 , MySQL.256
}
