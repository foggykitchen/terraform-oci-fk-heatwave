module "oci-fk-free-mds" {
  source                  = "git::https://github.com/mlinxfeld/terraform-oci-fk-heatwave.git?ref=e5809bbebad17dba8d3c5185b24123e16305b7ac"
  mds_admin_password      = var.mds_admin_password
  mds_availability_domain = var.mds_availability_domain
  mds_compartment_ocid    = var.mds_compartment_ocid
  mds_shape               = "MySQL.Free"
  mds_display_name        = "FoggyKitchenFreeTierMDS"
  mds_description         = "FoggyKitchen Free Tier MySQL/Heatwave Database System"
  use_existing_vcn        = false
}

