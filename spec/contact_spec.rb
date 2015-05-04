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

end
