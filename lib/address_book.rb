class AddressBook

  attr_reader(:contacts)

  define_method(:initialize) do
    @contacts = []
  end

  define_method(:add_contact) do |contact|
    @contacts.push(contact)
  end


end
