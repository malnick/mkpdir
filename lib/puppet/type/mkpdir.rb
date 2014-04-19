# mkdir -p type
require 'pathname'
Puppet::Type.newtype(:mkpdir) do
  desc "I do the mkdir -p bitches"

  ensurable do
   defaultvalues 
  end

  newparam(:path, :namevar => true) do
    desc "Path for mkdir -p command"
    validate do |v|
      path = Pathname.new(v)
      unless path.absolute?
        raise ArgumentError, "Path not absolute: #{path}"
      end
    end
  end
end

