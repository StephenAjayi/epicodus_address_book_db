require('rspec')
require('address')

describe(Address) do

  describe('#initialize') do
    it('creates an instance of the address class') do
      test_address = Address.new({:address => '1324 SW 5th Ave', :type => 'Home'})
      expect(test_address.class()).to(eq(Address))
    end
  end

  describe('#address') do
    it('it returns the address of an address object') do
      test_address = Address.new({:address => '1324 SW 5th Ave', :type => 'Home'})
      expect(test_address.address()).to(eq('1324 SW 5th Ave'))
    end
  end

  describe('#type') do
    it('it returns the type of an address') do
      test_address = Address.new({:address => '1324 SW 5th Ave', :type => 'Home'})
      expect(test_address.type()).to(eq('Home'))
    end
  end

end
