class Contact

  attr_reader(:name, :phones, :emails, :addresses)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phones = []
    @emails = []
    @addresses = []
  end

  define_method(:add_phone) do |phone|
    @phones.push(phone)
  end

  define_method(:add_email) do |email|
    @emails.push(email)
  end

  define_method(:add_address) do |address|
    @addresses.push(address)
  end

end
