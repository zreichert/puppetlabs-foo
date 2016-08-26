#
class foo {
  foo_resource { "thing":
    prop_one  => "Manifest \"${foo_function($foo_fact)}\" Value",
    param_one => "Manifest Value",
  }
}
