Puppet::Type.type(:foo_resource).provide(:ruby) do
  def exists?
    false
  end

  def create
    Puppet.debug("Still creatin' foo....")
  end

  def destroy
    raise Puppet::Error, "YOU CAN'T DESTROY ME!!!"
  end

  mk_resource_methods

  def flush
    Puppet.notice "Version 2 has Property 1: #{resource[:prop_one]} " +
                  "and Param 1: #{resource[:param_one]}"

    Puppet.notice "Version 2 has Property 2: #{resource[:prop_two]} " +
                  "and Param 2: #{resource[:param_two]}"
  end
end
