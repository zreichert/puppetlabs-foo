module Puppet::Parser::Functions
  newfunction(:foo_function, :type => :rvalue) do |args|
    Puppet.notice('Executing Foo Function Version 2')

    args.first + ' via Foo Function'
  end
end
