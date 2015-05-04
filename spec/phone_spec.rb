require('rspec')
require('phone')

describe(Phone) do

  describe('#initialize') do
    it('creates an instance of the phone class') do
      test_phone = Phone.new({:number => 503897, :type => "work"})
      expect(test_phone.class()).to(eq(Phone))
    end
  end

  describe('#number') do
    it('returns the number of a phone') do
      test_phone = Phone.new({:number => 503897, :type => "work"})
      expect(test_phone.number).to(eq(503897))
    end
  end

  describe('#type') do
    it('returns the type of a phone') do
      test_phone = Phone.new({:number => 503897, :type => "work"})
      expect(test_phone.type).to(eq("work"))
    end
  end

end
