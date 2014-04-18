require 'fileutils'
require 'facter'

Puppet::Type.type(:mkpdir).provide(:mkpdir) do
desc "I provide the mkdir -p bitches"
  commands :mkdir => 'mkdir'

  def exists? 
    File.directory?(resource[:path])
  end

  def create
   FileUtils.mkdir_p(resource[:path]) 
  
  end

  def destroy
    FileUtils.rm_rf(resource[:path])
  end
end
