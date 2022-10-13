resource "snowflake_schema" "schema" {
  database            = snowflake_database.db.name
  name                = "tf_demo_schema"
  data_retention_days = 1
}