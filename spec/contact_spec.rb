require('rspec')
require('phone')
require('address')
require('contact')
require('email')

describe(Contact) do

  describe('#initialize') do
    it('creates an instance of the Contact class') do
      test_contact = Contact.new({:name => "Greg"})
      expect(test_contact.class).to(eq(Contact))
    end
  end

  describe('#name') do
    it('returns the name of a contact') do
      test_contact = Contact.new({:name => "Greg"})
      expect(test_contact.name).to(eq("Greg"))
    end
  end

  describe('#phones') do
    it('returns the phones of a contact') do
      test_contact = Contact.new({:name => "Greg"})
      expect(test_contact.phones).to(eq([]))
    end
  end

  describe('#emails') do
    it('returns the phones of a emails') do
      test_contact = Contact.new({:name => "Greg"})
      expect(test_contact.emails).to(eq([]))
    end
  end

  describe('#addresses') do
    it('returns the addresses of a contact') do
      test_contact = Contact.new({:name => "Greg"})
      expect(test_contact.addresses).to(eq([]))
    end
  end

  describe('#add_phone') do
    it("adds a phone to a contact's list of phones") do
      test_contact = Contact.new({:name => "Greg"})
      test_phone = Phone.new({:number => 5031234567, :type => 'Home'})
      test_contact.add_phone(test_phone)
      expect(test_contact.phones).to(eq([test_phone]))
    end
  end

  describe('#add_email') do
    it('adds an email to a contacts list of emails') do
      test_contact = Contact.new({:name => 'Greg'})
      test_email = Email.new({:address => 'lonelyboy16@yahoo.com', :type => "Work"})
      test_contact.add_email(test_email)
      expect(test_contact.emails()).to(eq([test_email]))
    end
  end

  describe('#add_address') do
    it('adds an address to a contacts list of addresses') do
      test_contact = Contact.new({:name => 'Greg'})
      test_address = Address.new({:address => '11201 Terrace Circle', :type => 'Home'})
      test_contact.add_address(test_address)
      expect(test_contact.addresses()).to(eq([test_address]))
    end
  end

end
