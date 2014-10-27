require File.join File.dirname(__FILE__), '../common'

Puppet::Type.type(:test).provide :test, :parent => Puppet::Provider::Test_common do
  desc 'test provider'

  commands :date => '/bin/date'
  commands :cmd_true => '/bin/true'
  commands :cmd_false => '/bin/false'

  def self.instances
    puts 'call: self.instances'
    #new { :name => 'found' }
  end
  
  def self.prefetch(resources)
    puts 'call: self.prefetch'
    self.double_date
    puts 'end prefetch'
    nil
  end

  def exists?
    puts "call exists? false"
    #puts "param b: #{@resource[:b]}"
    #puts "prop a: #{@resource[:a]}"
    call_date
    self.class.double_date
    puts "end exists"
    false
  end

  def create
    puts 'Create. true'
    true
  end

  def destroy
    puts 'Destroy. true'
    true
  end

  def a
    puts "get old prop"
    'value from existing state'
  end

  def a=(value)
    puts "set new prop"
    puts "set param to: #{value}"
    true
  end

end
