terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.35"
    }
  }
}

provider "snowflake" {
  role  = "SYSADMIN"
  account="bu69832.central-india.azure"
  username="ajit1447"
  password="NTlk@1557"  
}

resource "snowflake_database" "db" {
  name     = "TF_DEMO"
}

resource "snowflake_database" "db1" {
  name     = "TF_DEMO1"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"
  auto_suspend = 60
}