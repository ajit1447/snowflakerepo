resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO1"
  warehouse_size = "small"
  auto_suspend = 60
}