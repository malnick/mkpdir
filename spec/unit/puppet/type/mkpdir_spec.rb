require 'puppet'
require 'puppet/type/mkpdir'
describe Puppet::type.type(:mkpdir) do
  let(:resource_foo) { Puppet::Type.type(:mkpdir).new(:path => '/foo') }
  it 'should accept ensure'
  it 'should require that path be absolute'
end
