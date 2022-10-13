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
  account=var.account
  username=var.username
  password=var.password
}

resource "snowflake_database" "db" {
  name     = "TF_DEMO2"
}

resource "snowflake_database" "db1" {
  name     = "TF_DEMO1"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "large"
  auto_suspend = 60
}