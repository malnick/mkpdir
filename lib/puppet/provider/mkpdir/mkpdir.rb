require 'fileutils'
require 'facter'

Puppet::Type.type(:mkpdir).provide(:mkpdir) do
desc "I provide the mkdir -p bitches"
  confine :kernel => :linux
  commands :mkdir => 'mkdir'

  def exists? 
    File.directory?(resource[:path])
  end

  def create
   FileUtils.mkdir_p resource[:path] 
  
  end

  def destroy
    FileUtils.rm_rf(resource[:path])
  end

def dirpath
  dir =Dir.open(resource[:dirpath])

end
