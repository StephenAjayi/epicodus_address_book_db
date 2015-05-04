class Contact

  attr_reader(:name, :phones, :emails, :addresses)

  define_method(:initialize) do |attributes|
    @name = attributes.fetch(:name)
    @phones = []
    @emails = []
    @addresses = []
  end
end
