variable "module_name" {
  type    = string
  const   = true
  default = "example"
}

resource "test_resource" "foo" {
  value = "main_value"
}
