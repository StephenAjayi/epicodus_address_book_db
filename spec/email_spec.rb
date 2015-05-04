require('rspec')
require('email')

describe(Email) do

  describe('#initialize') do
    it('creates an instance of the email class') do
      test_email = Email.new({:address => 'lonelyboy15@hotmail.com', :type => 'Personal'})
      expect(test_email.class()).to(eq(Email))
    end
  end

  describe('#address') do
    it('it returns the address of an email') do
      test_email = Email.new({:address => 'lonelyboy15@hotmail.com', :type => 'Personal'})
      expect(test_email.address()).to(eq('lonelyboy15@hotmail.com'))
    end
  end

  describe('#type') do
    it('it returns the type of an email') do
      test_email = Email.new({:address => 'lonelyboy15@hotmail.com', :type => 'Personal'})
      expect(test_email.type()).to(eq('Personal'))
    end
  end

end
