#
class foo {
  foo_resource { "thing":
    prop_one  => "Manifest \"${foo_function($foo_fact)}\" Value",
    param_one => "Manifest Value",
    prop_two  => "Twos a Pair",
    param_two => "The Deuce",
  }
}
