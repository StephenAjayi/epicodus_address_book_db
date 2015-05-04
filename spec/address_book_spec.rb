require('rspec')
require('address_book')
require('contact')
require('phone')
require('email')
require('address')

describe(AddressBook) do

  describe('#initialize') do
    it("creates a new instance of the AddressBook class") do
      test_address_book = AddressBook.new()
      expect(test_address_book.class()).to(eq(AddressBook))
    end
  end

  describe('#contacts') do
    it("returns a address book's list of contacts") do
      test_address_book = AddressBook.new()
      expect(test_address_book.contacts).to(eq([]))
    end
  end
  describe('#add_contact') do
    it('adds a contact to the address book') do
      test_address_book = AddressBook.new()
      test_contact = Contact.new({:name => 'Greg'})
      test_address_book.add_contact(test_contact)
      expect(test_address_book.contacts()).to(eq([test_contact]))
    end
  end

end
