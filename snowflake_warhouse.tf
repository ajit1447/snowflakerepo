resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO2"
  warehouse_size = "small"
  auto_suspend = 60
}