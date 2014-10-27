Puppet::Type.newtype(:test,
:doc => <<-'ENDOFDOC'
Test resource
ENDOFDOC
) do
  ensurable

  newparam :name, :namevar => true do
    desc 'resource namevar'
  end

  newproperty :a do
    desc 'Test prop'
    defaultto 'a'
  end

  newparam :b do
    desc 'Test param'
    defaultto 'b'
  end

end
