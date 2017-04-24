require "my_hashish"
require "rspec"
require "pry"


describe 'MyHash' do

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "ugly")
      test_hash.myStore("persona", "non grada")
      expect(test_hash.myFetch("persona")).to(eq("non grada"))
    end
  end

  describe("#has_key?") do
    it("returns true/false if the key exists in our Hash") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      test_hash.myStore("puppy", "ugly")
      test_hash.myStore("persona", "non grada")
      expect(test_hash.has_key?("kitten")).to(eq(true))
    end
  end

  # describe("#has_key?") do
  #   it("returns true/false if the key exists in our Hash") do
  #     test_hash = MyHash.new()
  #     test_hash.myStore("kitten", "cute")
  #     test_hash.myStore("puppy", "ugly")
  #     test_hash.myStore("persona", "non grada")
  #     expect(test_hash.has_key?("kitten")).to(eq(true))
  #   end
  # end

end
