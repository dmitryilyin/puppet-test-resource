class Puppet::Provider::Test_common < Puppet::Provider

  def call_date
    puts "call: call_date"
    date
  end

  def self.double_date
    puts "call: double_date"
    date
    date
  end

end
