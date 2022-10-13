resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "small"
  auto_suspend = 60
}