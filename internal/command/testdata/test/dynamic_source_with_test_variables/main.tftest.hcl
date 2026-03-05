run "validate_dynamic_module" {
  module {
    source = "./modules/${var.module_name}"
  }

  assert {
    condition     = test_resource.foo.value == "alternate_value"
    error_message = "expected alternate_value from dynamically sourced module, got a different value"
  }
}
