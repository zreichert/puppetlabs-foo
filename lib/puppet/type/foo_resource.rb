Puppet::Type.newtype(:foo_resource) do
  ensurable do
    defaultvalues
    defaultto :present
  end

  newparam(:name, :namevar => true) do
    desc "The namevar"
  end

  newparam(:param_one) do
    desc "Parameter number one"
  end

  newproperty(:prop_one) do
    desc "Property number one"
    munge {|val| val.to_s }
  end

  newparam(:param_two) do
    desc "Parameter number two"
  end

  newproperty(:prop_two) do
    desc "Property number two"
    munge {|val| val.to_s }
  end
end
